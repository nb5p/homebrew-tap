class V2raya < Formula
  desc "A Linux web GUI client of Project V"
  homepage "https://v2raya.org"
  url "https://github.com/v2raya/v2raya.git",
    tag: "1.5.2",
    revision: "42379f75538a6632c36153c66264da3609ea9e22"
  license "GPLv3"
  head "https://github.com/v2raya/v2raya.git",
    branch: "stable"

  depends_on "node" => :build
  depends_on "yarn" => :build
  depends_on "go" => :build

  def install
    system "./build.sh"
    bin.install "v2raya"
  end

  test do
    system "false"
  end
end
