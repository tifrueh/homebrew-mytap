cask "mlaatkst" do
  version "1.0.0"
  sha256 "045b04c76482ecac23cf7bf47934b62f3a612b5ace7556b7ac563808e848e9e4"

  url "https://github.com/Timo-Frueh/mlaatkst/releases/download/v#{version}/MLAatKST.dmg"
  name "MLAatKST"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"

  zap trash: [
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
