class CcSwitchCli < Formula
  desc "All-in-One Assistant for Claude Code, Codex, Gemini, OpenCode & OpenClaw"
  homepage "https://github.com/SaladDay/cc-switch-cli"
  version "5.8.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.8.5/cc-switch-cli-v5.8.5-darwin-universal.tar.gz"
    sha256 "0819509fd59198315774366d56cfe9357daacbc69a8af9d37833572909d1984f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.8.5/cc-switch-cli-v5.8.5-linux-arm64-musl.tar.gz"
    sha256 "e312223a0b5e399ab65847674133f31761957cdad90c74a2b40cb63cc2661222"
  elsif OS.linux?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.8.5/cc-switch-cli-v5.8.5-linux-x64-musl.tar.gz"
    sha256 "f0e8c8268a17f13474dd9b1c11e49e9385843122f6d79b2de688637e33a1cfae"
  end

  def install
    bin.install "cc-switch"
  end

  test do
    system "#{bin}/cc-switch", "--version"
  end
end
