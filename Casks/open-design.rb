cask "open-design" do
  version "0.10.1"

  on_arm do
    sha256 "138936e9b40621985c13783c8e6a16a680c8191ae1617e97bfacc396b42b5d0a"
  end
  on_intel do
    sha256 "5c6e2e76b75fae22e5ce017f8207d8890681d06b074a6ab1d65e4b50e9034fdb"
  end

  arch arm: "arm64", intel: "x64"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg"
  name "Open Design"
  desc "Local-first, open-source agent-native design workspace"
  homepage "https://github.com/nexu-io/open-design"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Open Design.app"

  zap trash: [
    "~/Library/Application Support/Open Design",
    "~/Library/Application Support/io.open-design.desktop",
    "~/Library/Caches/io.open-design.desktop",
    "~/Library/Logs/Open Design",
    "~/Library/Preferences/io.open-design.desktop.plist",
    "~/Library/Saved Application State/io.open-design.desktop.savedState",
  ]
end
