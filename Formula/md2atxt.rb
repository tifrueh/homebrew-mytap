class Md2atxt < Formula
  include Language::Python::Virtualenv

  desc "Convert Markdown notes to Anki notes"
  homepage "https://github.com/tifrueh/md2atxt"
  url "https://files.pythonhosted.org/packages/57/7e/9665dede8d334a91b5d7c992db2616605d4910aeda0ed54651d01bf7cb0a/md2atxt-0.2.1.tar.gz"
  sha256 "4e11988d18f281442a42bd5296d5040eb3891006ad7eb72790fd9240b2d3e72f"
  license "MIT"

  depends_on "pandoc"
  depends_on "python"

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/25/e2/dfa73fe78f773018dcaebc6d09b819bc10d328ff5a6b4a66efa1e3d71f52/hatchling-1.31.0.tar.gz"
    sha256 "6b48ad4068a482ed7239b3a8215bc55b47aad3345d58dfc94e553c5d2d46211b"
  end

  resource "hatch-vcs" do
    url "https://files.pythonhosted.org/packages/6b/b0/4cc743d38adbee9d57d786fa496ed1daadb17e48589b6da8fa55717a0746/hatch_vcs-0.5.0.tar.gz"
    sha256 "0395fa126940340215090c344a2bf4e2a77bcbe7daab16f41b37b98c95809ff9"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "#{name} v#{version}", shell_output("#{bin}/md2atxt --version")
  end
end
