cask "conjugateur" do
  version "1.0.4"
  sha256 "8488246f051f714dafb643b3980c5204dd3d1eb84c6dff20a96c8b944491b6c3"

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
