class TheChosen < Formula
  include Language::Python::Virtualenv
  desc "A short text-adventure"
  homepage "https://github.com/Timo-Frueh/the-chosen"
  url "https://github.com/Timo-Frueh/the-chosen/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "1d70f7da419341886a009988e321709d9041ad5b44d2fc205a7e74aa30f3042f"
  license "GPL-3.0"

  depends_on "python@3.10"

  resource "clear_screen" do
    url "https://files.pythonhosted.org/packages/16/5d/79153f4acb0813b53eb7a9aaf84612118bfea1b7772f2fbc57cb89074296/clear_screen-0.1.14.tar.gz"
    sha256 "3a5f3bc45872b7509aad213e33a0dcfc6c464c2c3b2e15d1bc7dbe2d78f1c2d9"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end
