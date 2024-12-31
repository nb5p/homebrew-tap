class FigletFonts < Formula
  desc "Additional fonts for FIGlet"
  homepage "https://github.com/xero/figlet-fonts"
  url "https://github.com/xero/figlet-fonts/archive/a6d2db1a3ee88bec3518214e851825fc4495ac84.zip"
  version "a6d2db1"
  sha256 "2c89e9092d646731bce967b0d2d163e23e40e0612e02e95088e52feda0c78c4b"

  def install
    # Install to a separate directory
    # to avoid conflicts with figlet's default fonts
    (share/"figlet/fonts-extra").install Dir["*.flc", "*.flf"]
  end

  def caveats
    <<~EOS
      Fonts have been installed to:
        #{HOMEBREW_PREFIX}/share/figlet/fonts-extra

      To use these fonts with FIGlet:
        figlet -d #{HOMEBREW_PREFIX}/share/figlet/fonts-extra -f "ANSI Shadow" Hello

      To globally set these fonts as the default:
        export FIGLETFONTDIR=#{HOMEBREW_PREFIX}/share/figlet/fonts-extra

      If you wish to overwrite figlet's default fonts:
        brew link --overwrite figlet-fonts

      Note: Overwriting default fonts may cause conflicts with the `figlet` package.
    EOS
  end

  test do
    # Test if the font files are installed successfully
    assert_predicate share/"figlet/fonts-extra/ANSI Shadow.flf", :exist?, "ANSI Shadow font file must exist"
  end
end
