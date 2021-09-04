cask "mathcha-notebook" do
  version :latest
  sha256 "b694b1c6343466b39ce4692ba8be53681557662cac1758dc876b079c76fb6773"

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}-mac.zip"
  name "mathcha-notebook"
  desc "Mathematics Editor"
  homepage "https://www.mathcha.io/"

  app "Mathcha Notebook.app"
end
