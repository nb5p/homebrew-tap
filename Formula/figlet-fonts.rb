class FigletFonts < Formula
  desc "Additional fonts for FIGlet"
  homepage "https://github.com/xero/figlet-fonts"
  url "https://github.com/xero/figlet-fonts/archive/417429ef36ab039cbf192a4424c60aa23fc32de8.zip"
  version "417429e"
  sha256 "3e77279ac89a9512fe600a6d071a3ca249a91b72032ecbfcf0b568fc39535a3d"

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
        figlet -d #{HOMEBREW_PREFIX}/share/figlet/fonts-extra -f "ANSI Shadow" FIGLET-FONTS

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
