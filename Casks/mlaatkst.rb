cask "mlaatkst" do
  version "1.2.3"
  sha256 "ab58c7e65140a1cebd75d5758f223ddf3b849fce4b1efb8a0bc2c6a920e4f68b"

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
