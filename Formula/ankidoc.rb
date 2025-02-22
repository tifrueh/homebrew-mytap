class Ankidoc < Formula
  include Language::Python::Virtualenv

  desc "Convert asciidoc notes to anki notes"
  homepage "https://github.com/tifrueh/ankidoc/"
  url "https://github.com/tifrueh/ankidoc/archive/refs/tags/v0.3.0-rc1.tar.gz"
  sha256 "ece12b96d6ae4a6130bc998ace08cd95cab7cd4b1fc3ee6b70e6f63034783c91"
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
