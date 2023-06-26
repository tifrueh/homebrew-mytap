cask "mlaatkst" do
  version "2.1.1"
  sha256 "0a58d7ecbff15a3c9f9de4b9ad25c3f5558f0ba943e8c3ce749e36b1572c2a58"

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
