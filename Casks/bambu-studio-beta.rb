cask "bambu-studio-beta" do
  version "02.08.00.50,20260625193201"
  sha256 "aa2e3d0b71b45ca74c585b201253c47a3c58a784293db6eb6be287cfa205dbbf"

  url "https://github.com/bambulab/BambuStudio/releases/download/v#{version.csv.first}/Bambu_Studio_mac-v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/bambulab/BambuStudio/"
  name "Bambu Studio Beta"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab (Beta)"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url "https://api.github.com/repos/bambulab/BambuStudio/releases?per_page=10"
    strategy :json do |json|
      json.select { |r| r["prerelease"] }
          .map do |r|
            asset = r["assets"]&.find { |a| a["name"]&.match?(/mac/i) }
            next if asset.blank?

            match = asset["browser_download_url"]&.match(%r{/v?(\d+(?:\.\d+)+)[^/]*?/Bambu[._-]Studio[._-]mac[._-]v?\d+(?:\.\d+)+[._-](\d+)\.dmg}i)
            next if match.blank?

            "#{match[1]},#{match[2]}"
          end&.first
    end
  end

  conflicts_with cask: "bambu-studio"

  depends_on macos: :big_sur

  app "BambuStudio.app"

  zap trash: [
    "/Library/Logs/DiagnosticsReports/BambuStudio*",
    "~/Library/Application Support/BambuStudio",
    "~/Library/Caches/com.bambulab.bambu-studio",
    "~/Library/HTTPStorages/com.bambulab.bambu-studio.binarycookies",
    "~/Library/Preferences/com.bambulab.bambu-studio.plist",
    "~/Library/Saved Application State/com.bambulab.bambu-studio.savedState",
    "~/Library/WebKit/com.bambulab.bambu-studio",
  ]
end
