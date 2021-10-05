cask "mlaatkst" do
  version "1.0.0"
  sha256 "f3b049cfe0adcf7b99ee8a852f9c837ac0f2fe2371a81753564fd9223aa6b95b"

  url "https://github.com/Timo-Frueh/mlaatkst/releases/download/v#{version}/MLAatKST.zip"
  name "MLAatKST"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"

  zap trash: [
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
