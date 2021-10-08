cask "mlaatkst" do
  version "1.2.0"
  sha256 "a28d3007315152438d91cb8080f851ed0bc72ea8f4f83a8d5fce459d67b3447e"

  url "https://github.com/Timo-Frueh/mlaatkst/releases/download/v#{version}/MLAatKST.zip"
  name "MLAatKST"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"

  zap trash: [
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
