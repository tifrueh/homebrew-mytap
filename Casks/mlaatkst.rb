cask "mlaatkst" do
  version "2.1.4"
  sha256 "c35cd289f5336a3e09ef2e23c32aa7bebf084b47b32940e258f1ecccaf99b8be"

  url "https://github.com/tifrueh/mlaatkst/releases/download/v#{version}/MLAatKST-macOS-universal-v#{version}.pkg"
  name "mlaatkst"
  desc "Footnote helper for KST students"
  homepage "https://github.com/tifrueh/mlaatkst"

  depends_on macos: ">= :big_sur"

  pkg "MLAatKST-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "com.tifrueh.mlaatkst"

  zap trash: [
  "~/Library/Application Scripts/com.tifrueh.MLAatKST",
  "~/Library/Containers/com.tifrueh.MLAatKST",
  "~/Library/Preferences/MLAatKST.plist",
  "~/Library/Preferences/com.tifrueh.mlaatkst.plist",
  "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]

end
