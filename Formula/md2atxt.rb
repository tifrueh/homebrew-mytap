class Md2atxt < Formula
  include Language::Python::Virtualenv

  desc "Convert Markdown notes to Anki notes"
  homepage "https://github.com/tifrueh/md2atxt"
  url "https://github.com/tifrueh/md2atxt/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "5bd8074d07a6d21b5149f8743058f190857a835ce5c91e19a5d29af53854f770"
  license "MIT"

  depends_on "pandoc"
  depends_on "python"

  def install
    venv = virtualenv_create libexec, "python", system_site_packages: false
    venv.pip_install "hatchling"
    venv.pip_install "hatch-vcs"
    with_env(
      "SETUPTOOLS_SCM_PRETEND_VERSION" => "v#{version}"
    ) do
      venv.pip_install_and_link buildpath, link_manpages: true
    end
  end

  test do
    assert_match "#{name} v#{version}", shell_output("#{bin}/md2atxt --version")
  end
end
