class Ankidoc < Formula
  include Language::Python::Virtualenv

  desc "Convert asciidoc notes to anki notes"
  homepage "https://github.com/tifrueh/ankidoc/"
  url "https://github.com/tifrueh/ankidoc/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "42f6ca414239b3191834e569033251d314afa518a866a44d072e6e1174bfc66d"
  license "GPL-3.0-or-later"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"ankidoc", "--help"
  end
end
