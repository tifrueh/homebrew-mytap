class TheChosenRemastered < Formula
  desc "Short ZORK-like text adventure"
  homepage "https://github.com/tifrueh/the-chosen-remastered"
  url "https://github.com/tifrueh/the-chosen-remastered/archive/refs/tags/v1.0.0-alpha.2.tar.gz"
  sha256 "c4fa4a8f8793e3ced8d8d43439de2ebf651d77b08e67b8067f9b946717628850"
  license "GPL-3.0-or-later"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build

  uses_from_macos "ncurses"

  def install
    system "meson", "setup", "build", *std_meson_args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"
  end

  test do
    system "#{bin}/the-chosen-remastered"
  end
end
