cask "mlaatkst" do
  version "1.2.4"
  sha256 "b2ff79904d81b5717c3ba895ff2270e1879767dd055087c6fb3ac09a5141c12f"

  url "https://github.com/tifrueh/mlaatkst/releases/download/v#{version}/MLAatKST-macOS-universal-v#{version}.pkg"
  name "mlaatkst"
  desc "Citation helper for KST students"
  homepage "https://github.com/Timo-Frueh/mlaatkst"

  pkg "MLAatKST-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "com.tifrueh.mlaatkst"

  zap trash: [
    "~/Library/Preferences/com.tifrueh.mlaatkst.plist",
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
