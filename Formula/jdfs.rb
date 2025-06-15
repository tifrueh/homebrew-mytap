class Jdfs < Formula
  desc "Navigation and manipulation tool for johnny.decimal file systems"
  homepage "https://github.com/tifrueh/jdfs"
  url "https://github.com/tifrueh/jdfs/archive/refs/tags/v0.1.1.tar.gz"
  head "https://github.com/tifrueh/jdfs.git", branch: "development"
  sha256 "6a3cb3462685c6abf0a1bfae20a1f19f28e38e088a1187473b68bed1b5b36795"
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
