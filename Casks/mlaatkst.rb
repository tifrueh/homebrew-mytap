cask "mlaatkst" do
  version "1.2.4"
  sha256 "a1c2b417fe7f6b93a757ddc2b4c19562af17478131d414697b6cb1c206954e72"

  url "https://github.com/tifrueh/mlaatkst/releases/download/v#{version}/MLAatKST-macOS-universal-v#{version}.zip"
  name "mlaatkst"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  app "MLAatKST.app"

  zap trash: [
    "~/Library/Preferences/com.tifrueh.mlaatkst.plist",
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
