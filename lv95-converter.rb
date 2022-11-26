class Lv95Converter < Formula
  desc "Convert LV95 to WGS84 and vice versa"
  homepage "https://github.com/tifrueh/lv95-converter"
  url "https://github.com/tifrueh/lv95-converter/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "da1830f2196188b4e5597529e3cd13295a34d92324f0a731ba79c60311abd473"
  license "GPL-3.0-or-later"

  def install
    system "make"
    prefix.install "LICENSE.md", "README.md"
    bin.install "lv95-converter"
  end

  test do
    system "false"
  end
end
