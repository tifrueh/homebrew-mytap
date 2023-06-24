cask "mlaatkst" do
  version "2.1.0"
  sha256 "44b38e1ea24e069b1bfa659eb51282206c88fd1fd914e0a0c1dae177193c3fd8"

  url "https://github.com/tifrueh/mlaatkst/releases/download/v#{version}/MLAatKST-macOS-universal-v#{version}.pkg"
  name "mlaatkst"
  desc "Footnote helper for KST students"
  homepage "https://github.com/tifrueh/mlaatkst"

  pkg "MLAatKST-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "com.tifrueh.mlaatkst"

  zap trash: [
    "~/Library/Preferences/com.tifrueh.mlaatkst.plist",
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
