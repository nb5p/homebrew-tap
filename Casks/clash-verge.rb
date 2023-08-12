cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "6e6b48fbb5bbf230001a6bae9e6f82771a9f6235a55d72d98781015678cf4cd8",
         intel: "5b00ab180c0b1e8067c6dba298e637141001cf634f14cb95eddbd6367e568f3b"

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
