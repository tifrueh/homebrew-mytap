class TheChosenRemastered < Formula
  desc "Short ZORK-like text adventure"
  homepage "https://github.com/tifrueh/the-chosen-remastered"
  url "https://github.com/tifrueh/the-chosen-remastered/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "8d095929a7b0b489e1741b581750384e0599687a7170b8c069bfef0ade8223ef"
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
    assert_equal "1.0.1", shell_output("#{bin}/the-chosen-remastered -v")
  end
end
