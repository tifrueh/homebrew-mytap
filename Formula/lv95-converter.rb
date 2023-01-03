class Lv95Converter < Formula
  desc "Convert LV95 to WGS84 and vice versa"
  homepage "https://github.com/tifrueh/lv95-converter"
  url "https://github.com/tifrueh/lv95-converter/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "8cf6bdd41af84e7fe82a52543d7c663d7c46b62e7e7b6ea89644141663b48528"
  license "GPL-3.0-or-later"

  depends_on "cli11"

  def install
    system "make"
    prefix.install "LICENSE.md"
    prefix.install "README.md"
    bin.install "build/lv95-converter"
  end

  test do
    system("lv95-converter")
    assert_equal "Coordinates in WGS84: N 46.9511, E 7.43864",
shell_output("lv95-converter lv95 --east 2600000 --north 1200000").strip
    assert_equal "1.0.3", shell_output("lv95-converter --version")
  end
end
