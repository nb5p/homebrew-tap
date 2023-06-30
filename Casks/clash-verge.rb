cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "c4587c7e2111fa05331513abbc7e5bd47a7ef2c210482fe832fa2609bd674098",
         intel: "e28e6c29cbfa4bb0b5982e8df63ffd90e666a9a7355f6bda44e2e5aa00a9aed"

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
