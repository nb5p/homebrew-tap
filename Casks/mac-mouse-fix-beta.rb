cask "mac-mouse-fix-beta" do
  version "3.1.0-Beta-1"
  sha256 "201851c2f25b8217a2fcc24b2e0217ae0fb4266f7b759874db1ecb32718d03e9"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip"
  name "Mac Mouse Fix Beta"
  desc "Make Your $10 Mouse Better Than an Apple Trackpad!"
  homepage "https://github.com/noah-nuebling/mac-mouse-fix/"

  livecheck do
    url "https://github.com/noah-nuebling/mac-mouse-fix/releases"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+(?:-[A-Za-z]+-\d+)?)["' >]}i)
  end

  auto_updates true

  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/LaunchAgents/com.nuebling.mac-mouse-fix.helper.plist",
  ]
end
