cask "mouse-fix-beta" do
  version "3.0.0-Beta-7"
  sha256 "17c798958c541cafb219891a05433374b9647899649b88cfaaa91fd627a43ed9"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip"
  name "Mouse Fix Beta"
  desc "Make Your $10 Mouse Better Than an Apple Trackpad!"
  homepage "https://macmousefix.com/"

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
