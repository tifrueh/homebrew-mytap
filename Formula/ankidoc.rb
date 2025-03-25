class Ankidoc < Formula
  include Language::Python::Virtualenv

  desc "Convert asciidoc notes to anki notes"
  homepage "https://github.com/tifrueh/ankidoc/"
  url "https://github.com/tifrueh/ankidoc/archive/refs/tags/v0.3.0-rc2.tar.gz"
  sha256 "6685d326164a6af4e60ed87be5198e72c4f71d4291567be6b255ca84af8041d0"
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
