cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.5"
  sha256 arm:   "eff7cbf3551d26e92216ff52c5d0845c9a52b4eea54bcd587e22879a78360049",
         intel: "b764151be347d7445e8aaf491b669bf4ab42524c0b7f3bbcbd24f991f3fb0180"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash Verge"
  desc "Clash GUI based on tauri"
  homepage "https://github.com/zzzgydi/clash-verge/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Clash Verge.app"
end
