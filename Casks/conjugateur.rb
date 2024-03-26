cask "conjugateur" do
  version "1.0.2"
  sha256 "facb490d6e6d631766d9d2a08351bf58d171c2821037a86d44adeadf11e36267"

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
