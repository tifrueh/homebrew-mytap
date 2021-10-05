cask "mlaatkst" do
  version "1.1.0"
  sha256 "485e4fe723c962c33b9bbd95a132bc25a1b653761898fc7616c2fc13f3d66900"

  url "https://github.com/Timo-Frueh/mlaatkst/releases/download/v#{version}/MLAatKST.zip"
  name "MLAatKST"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"

  zap trash: [
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
