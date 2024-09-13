class Jd < Formula
  desc "Navigation and manipulation tool for johnny.decimal systems"
  homepage "https://github.com/tifrueh/jd"
  url "https://github.com/tifrueh/jd/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "257892dc80454b3d7df2d7037844c5a7dfac9f8296283bc36b0749989d87c8ab"
  license "GPL-3.0-or-later"

  depends_on "meson" => :build
  depends_on "ninja" => :build

  def install
    system "meson", "setup", "build", *std_meson_args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"
  end

  test do
    shell_output(bin/"jd", 1)
    shell_output(bin/"jd" --version)
  end
end
