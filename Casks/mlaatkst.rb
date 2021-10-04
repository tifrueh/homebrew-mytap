cask "mlaatkst" do
  version "1.0.0"
  sha256 "9c1e98dd855feb5881772487ce0f1c2a863417b28265cabf001bb183de38693c"

  url "https://github.com/Timo-Frueh/mlaatkst/releases/download/v#{version}/MLAatKST.dmg"
  name "MLAatKST"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"

  zap trash: [
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
