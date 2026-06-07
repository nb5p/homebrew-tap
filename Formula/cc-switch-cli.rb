class CcSwitchCli < Formula
  desc "All-in-One Assistant for Claude Code, Codex, Gemini, OpenCode & OpenClaw"
  homepage "https://github.com/SaladDay/cc-switch-cli"
  version "5.8.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.8.0/cc-switch-cli-v5.8.0-darwin-universal.tar.gz"
    sha256 "7c16a10d59490cffc75636c5ad4e3225851a2c643b7caa42ce174d378c2f50f4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.8.0/cc-switch-cli-v5.8.0-linux-arm64-musl.tar.gz"
    sha256 "e9179ee4e5716f8f4a5bb56752f4c68b36d044cde1e6eb52d3626d209771b2f3"
  elsif OS.linux?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.8.0/cc-switch-cli-v5.8.0-linux-x64-musl.tar.gz"
    sha256 "50b188c21027594dc14689e297af676077afd9ba5002400e17e36a01b03ada13"
  end

  def install
    bin.install "cc-switch"
  end

  test do
    system "#{bin}/cc-switch", "--version"
  end
end
