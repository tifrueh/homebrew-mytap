cask "mlaatkst" do
  version "2.1.1"
  sha256 "82e9481db347f3ab3346202d4425f45cfe22ca2479535d8129372be220efa177"

  url "https://github.com/tifrueh/mlaatkst/releases/download/v#{version}/MLAatKST-macOS-universal-v#{version}.pkg"
  name "mlaatkst"
  desc "Footnote helper for KST students"
  homepage "https://github.com/tifrueh/mlaatkst"

  depends_on macos: ">= :monterey"

  pkg "MLAatKST-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "com.tifrueh.mlaatkst"

  zap trash: [
    "~/Library/Preferences/com.tifrueh.mlaatkst.plist",
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
