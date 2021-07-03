cask "mathcha-notebook" do
  version :latest
  sha256 :no_check

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}-mac.zip"
  name "mathcha-notebook"
  desc "Easy editor for math"
  homepage "https://www.mathcha.io/"

  app "Mathcha Notebook.app"
end
