cask "mlaatkst" do
  version "1.2.2"
  sha256 "bea05f8abdfbce65f63fb4479c32520116bf537d5a3eb57936948a69bbe56faa"

  url "https://github.com/Timo-Frueh/mlaatkst/releases/download/v#{version}/MLAatKST-macOS-universal-v#{version}.zip"
  name "mlaatkst"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"
end
