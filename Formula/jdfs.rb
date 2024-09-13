class Jdfs < Formula
  desc "Navigation and manipulation tool for johnny.decimal file systems"
  homepage "https://github.com/tifrueh/jdfs"
  url "https://github.com/tifrueh/jdfs/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e0ebb978e6dbdb7b36c750a079e275c071dbfa49457b851304798330ca7b8741"
  license "GPL-3.0-or-later"

  depends_on "meson" => :build
  depends_on "ninja" => :build

  def install
    system "meson", "setup", "build", *std_meson_args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"
  end

  test do
    shell_output(bin/"jdfs", 1)
    shell_output(bin/"jdfs --version")
  end
end
