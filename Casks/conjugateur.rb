cask "conjugateur" do
  version "1.0.2"
  sha256 "80f954cfd5b89990ab1f4fd4e2236b4628a56598e681a79570e2b9f4a0396d2d"

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
    "~/Library/Preferences/ch.tifrueh.conjugateur.conf",
    "~/Library/Preferences/ch.tifrueh.conjugateur.plist",
    "~/Library/Saved Application State/ch.tifrueh.conjugateur.savedState",
  ]
end
