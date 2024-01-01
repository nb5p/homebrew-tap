cask "mouse-fix-beta" do
  version "3.0.0"
  sha256 "e79c8feb18685e87bcb63bd4207ae593e93f45ff1fd319825222c6c17bb643df"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip"
  name "Mouse Fix Beta"
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
