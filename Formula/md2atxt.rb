class Md2atxt < Formula
  include Language::Python::Virtualenv

  desc "Convert Markdown notes to Anki notes"
  homepage "https://github.com/tifrueh/md2atxt"
  url "https://github.com/tifrueh/md2atxt/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4446531f7d81fd54fa53808a74828ce13d3e806a8e601ba86517e79f1a048676"
  license "MIT"

  depends_on "pandoc"
  depends_on "python"

  def install
    with_env(
      "SETUPTOOLS_SCM_PRETEND_VERSION" => "v#{version}"
    ) do
      virtualenv_install_with_resources
    end
  end

  test do
    assert_match "#{name} v#{version}", shell_output("#{bin}/md2atxt --version")
  end
end
