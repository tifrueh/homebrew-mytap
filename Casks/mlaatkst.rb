cask "mlaatkst" do
  version "1.1.0"
  sha256 "e4944df3566c728e4a806a3912aa50200180679902e72752074d4506ea529726"

  url "https://github.com/Timo-Frueh/mlaatkst/releases/download/v#{version}/MLAatKST.zip"
  name "MLAatKST"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"

  zap trash: [
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
