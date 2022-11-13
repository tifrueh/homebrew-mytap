class Lv95Converter < Formula
  desc "Convert LV95 to WGS84 and vice versa"
  homepage "https://github.com/tifrueh/lv95-converter"
  url "https://github.com/tifrueh/lv95-converter/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "65639c293bcb594140cea442124778cf3238fe6cf4f1bf1115077024136d0ffe"
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
