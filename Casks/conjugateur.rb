cask "conjugateur" do
  version "1.0.2"
  sha256 "c6539910db6e3e8502efca9539348a68b0e68f1754bdadc98331e6596257f841"

  url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-universal-v#{version}.pkg"
  name "conjugateur"
  desc "French verb conjugation trainer"
  homepage "https://github.com/tifrueh/conjugateur"

  depends_on macos: ">= :monterey"

  pkg "Conjugateur-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "ch.tifrueh.conjugateur"

  zap trash: [
    "~/Library/Caches/ch.tifrueh.conjugateur",
    "~/Library/HTTPStorages/ch.tifrueh.conjugateur",
    "~/Library/Preferences/ch.tifrueh.conjugateur.plist",
    "~/Library/Preferences/ch.tifrueh.conjugateur.conf",
    "~/Library/Saved Application State/ch.tifrueh.conjugateur.savedState",
  ]
end
