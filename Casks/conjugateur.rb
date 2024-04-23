cask "conjugateur" do
  version "1.0.3"
  sha256 "c4053e513670f167d94c55e95952afbf27024513ff82da8f4c5f7476bd15d240"

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
