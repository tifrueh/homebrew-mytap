cask "mlaatkst" do
  version "2.1.2"
  sha256 "9c474a27ff1deafbd28f37e6430662b76d92b6d1c0f2706b31540a721b9cfe64"

  url "https://github.com/tifrueh/mlaatkst/releases/download/v#{version}/MLAatKST-macOS-universal-v#{version}.pkg"
  name "mlaatkst"
  desc "Footnote helper for KST students"
  homepage "https://github.com/tifrueh/mlaatkst"

  depends_on macos: ">= :big_sur"

  pkg "MLAatKST-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "com.tifrueh.mlaatkst"

  zap trash: [
    "~/Library/Preferences/com.tifrueh.mlaatkst.plist",
    "~/Library/Saved Application State/com.tifrueh.mlaatkst.savedState",
  ]
end
