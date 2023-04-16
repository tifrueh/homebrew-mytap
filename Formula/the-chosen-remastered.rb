class TheChosenRemastered < Formula
  desc "Short ZORK-like text adventure"
  homepage "https://github.com/tifrueh/the-chosen-remastered"
  url "https://github.com/tifrueh/the-chosen-remastered/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "088ccedf570f6a4b3e70e795255cde6bb448ffcc8d9607d8039685172f9f3735"
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
    assert_equal "1.0.0", shell_output("#{bin}/the-chosen-remastered -v")
  end
end
