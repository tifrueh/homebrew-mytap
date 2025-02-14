class Ankidoc < Formula
  include Language::Python::Virtualenv

  desc "Convert asciidoc notes to anki notes"
  homepage "https://github.com/tifrueh/ankidoc/"
  url "https://github.com/tifrueh/ankidoc/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9aeb98d91720222d7d05cb7d43b0effa6504f700c61a242dd5bb6a9c45492bff"
  license "GPL-3.0-or-later"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"ankidoc", "--help"
  end
end
