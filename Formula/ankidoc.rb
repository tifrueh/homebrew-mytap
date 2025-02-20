class Ankidoc < Formula
  include Language::Python::Virtualenv

  desc "Convert asciidoc notes to anki notes"
  homepage "https://github.com/tifrueh/ankidoc/"
  url "https://github.com/tifrueh/ankidoc/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ebb07b10f16abe143b1caf3f6038971e82cf837686096bd024e805ef78f88991"
  license "GPL-3.0-or-later"

  depends_on "python"
  depends_on "asciidoctor"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"ankidoc", "--help"
  end
end
