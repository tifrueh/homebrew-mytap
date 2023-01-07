class Lv95Converter < Formula
  desc "Convert LV95 to WGS84 and vice versa"
  homepage "https://github.com/tifrueh/lv95-converter"
  url "https://github.com/tifrueh/lv95-converter/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "96924ad3f1c8a48a9afacf4ffad97a7b8bd06b3c740d41f6e3e556254df5f3bc"
  license "GPL-3.0-or-later"

  depends_on "cli11" :build

  def install
    system "make"
    system "gzip man/lv95-converter.1"
    prefix.install "LICENSE.md"
    prefix.install "README.md"
    bin.install "build/lv95-converter"
    man1.install "man/lv95-converter.1.gz"
  end

  test do
    system("lv95-converter")
    assert_equal "Coordinates in WGS84: N 46.9511, E 7.43864",
shell_output("lv95-converter lv95 --east 2600000 --north 1200000").strip
    assert_equal "1.0.3", shell_output("lv95-converter --version")
  end
end
