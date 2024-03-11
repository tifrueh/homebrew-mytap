cask "conjugateur" do
  version "1.0.0"
  sha256 "e936403a53e4aaab8881dd687aebaef6688e0307f0ccbb896ce7c7c1a03874aa"

  url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-universal-v#{version}.pkg"
  name "conjugateur"
  desc "French verb conjugation trainer"
  homepage "https://github.com/tifrueh/conjugateur"

  depends_on macos: ">= :monterey"

  pkg "Conjugateur-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "ch.tifrueh.conjugateur"

  zap trash: [
    "~/Library/Preferences/ch.tifrueh.conjugateur.plist",
    "~/Library/Preferences/conjugateur.plist",
    "~/Library/Saved Application State/ch.tifrueh.conjugateur.savedState",
  ]
end
