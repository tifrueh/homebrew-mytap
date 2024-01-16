class TheChosenRemastered < Formula
  desc "Short ZORK-like text adventure"
  homepage "https://github.com/tifrueh/the-chosen-remastered"
  url "https://github.com/tifrueh/the-chosen-remastered/releases/download/v1.0.2/the-chosen-remastered-1.0.2.tar.xz"
  sha256 "25ba4529eb981bd94f46279a540dc57151ebc126c9118f41510f101311dc4ac0"
  license "GPL-3.0-or-later"

  depends_on "meson" => :build
  depends_on "pkg-config" => :build

  uses_from_macos "ncurses"

  def install
    system "meson", "setup", "build", *std_meson_args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"
  end

  test do
    assert_equal "v1.0.2", shell_output("#{bin}/the-chosen-remastered -v")
  end
end
