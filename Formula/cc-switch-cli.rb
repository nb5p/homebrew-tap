class CcSwitchCli < Formula
  desc "All-in-One Assistant for Claude Code, Codex, Gemini, OpenCode & OpenClaw"
  homepage "https://github.com/SaladDay/cc-switch-cli"
  version "5.5.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.5.0/cc-switch-cli-v5.5.0-darwin-universal.tar.gz"
    sha256 "c131d1f31a9fcc19508c180d99219c6b210d84eb7cfb80515bab01709669ae5a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.5.0/cc-switch-cli-v5.5.0-linux-arm64-musl.tar.gz"
    sha256 "2f12db24d7538836550b5d1cb91c42f4bb519f931051b3a4e358f846854ec855"
  elsif OS.linux?
    url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.5.0/cc-switch-cli-v5.5.0-linux-x64-musl.tar.gz"
    sha256 "9afaa026f9bc24a795a3e01e5690ae236895689c349f61a33c476b1867b9acd2"
  end

  def install
    bin.install "cc-switch"
  end

  test do
    system "#{bin}/cc-switch", "--version"
  end
end
