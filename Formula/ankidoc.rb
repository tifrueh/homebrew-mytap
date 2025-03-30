class Ankidoc < Formula
  include Language::Python::Virtualenv

  desc "Convert asciidoc notes to anki notes"
  homepage "https://github.com/tifrueh/ankidoc/"
  url "https://github.com/tifrueh/ankidoc/archive/refs/tags/v0.3.0-rc3.tar.gz"
  sha256 "9b91eb7b73664b16506db0525b738eea9520f15bdddfc58b976bc344a5d0805d"
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
