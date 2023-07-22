cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.4"
  sha256 arm:   "6d8d2bbbc8e2b049a9561b2bfca85d146203cba00d3c5391eebd77c22ab99043",
         intel: "365612375e416cb78086879a6bbcc5882cddb809335157361dcb67ae58b1e67e"

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
