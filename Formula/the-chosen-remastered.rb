class TheChosenRemastered < Formula
  desc "Short ZORK-like text adventure"
  homepage "https://github.com/tifrueh/the-chosen-remastered"
  url "https://github.com/tifrueh/the-chosen-remastered/archive/refs/tags/v1.0.0-alpha.tar.gz"
  sha256 "83367c315a602851604031a9254c0b5f8928d7618eb32ecd03eb33e39b9da6a0"
  license "GPL-3.0-or-later"

  depends_on "meson" => :build
  depends_on "ninja" => :build

  def install
    system "meson", "setup", "build", *std_meson_args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"
  end

  test do
    system "#{bin}/the-chosen-remastered"
  end
end
