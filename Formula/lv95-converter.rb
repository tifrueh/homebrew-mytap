class Lv95Converter < Formula
  desc "Convert LV95 to WGS84 and vice versa"
  homepage "https://github.com/tifrueh/lv95-converter"
  url "https://github.com/tifrueh/lv95-converter/archive/refs/tags/v1.2.0.tar.gz"
  head "https://github.com/tifrueh/lv95-converter.git", branch: "development"
  sha256 "5b16bdbafe0bec352c4cd0520853d83184d34d917611e5f4e7b735c09d92711e"
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
    system "lv95-converter --help"
    assert_equal "Coordinates in WGS84: E 7.438637 N 46.951081", -shell_output("lv95-converter lv95 --east 2600000 --north 1200000").strip
  end
end
