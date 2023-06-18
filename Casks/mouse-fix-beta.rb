cask "mouse-fix-beta" do
  version "3.0.0-Beta-6"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip"
  name "Mouse Fix Beta"
  desc "Mac Mouse Fix - A simple way to make your mouse better."
  homepage "https://mousefix.org/"

  livecheck do
    url "https://github.com/noah-nuebling/mac-mouse-fix/releases"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+(?:-[A-Za-z]+\-\d+)?)["' >]}i)
  end

  auto_updates true

  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/LaunchAgents/com.nuebling.mac-mouse-fix.helper.plist",
  ]
end