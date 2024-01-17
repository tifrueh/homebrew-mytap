class Lv95Converter < Formula
  desc "Convert LV95 to WGS84 and vice versa"
  homepage "https://github.com/tifrueh/lv95-converter"
  url "https://github.com/tifrueh/lv95-converter/releases/download/v1.1.2/lv95-converter-1.1.0.tar.xz"
  sha256 "3b30e3201be2305ca378871ae148a6b457dbb73db8ebf24d6ee7cf058293a9b6"
  license "GPL-3.0-or-later"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "cli11" => :build
  depends_on "pkg-config" => :build

  def install
    system "meson", "setup", "build", *std_meson_args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"
  end

  test do
    system("lv95-converter")
    assert_equal "Coordinates in WGS84: N 46.9511, E 7.43864",
shell_output("lv95-converter lv95 --east 2600000 --north 1200000").strip
    assert_equal "v1.1.2", shell_output("lv95-converter --version")
  end
end
