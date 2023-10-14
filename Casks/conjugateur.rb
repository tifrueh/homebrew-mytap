cask "conjugateur" do
  version "1.0.0-beta"
  sha256 "399fdd6681bf0919724abc7c57004968b082036515f90d4a49cae70d3dcfcf09"

  url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-Sonoma-universal-v#{version}.pkg"
  name "conjugateur"
  desc "French verb conjugation trainer"
  homepage "https://github.com/tifrueh/conjugateur"

  depends_on macos: ">= :sonoma"

  pkg "Conjugateur-macOS-Sonoma-universal-v#{version}.pkg"

  uninstall pkgutil: "ch.tifrueh.conjugateur"

  zap trash: [
    "~/Library/Preferences/ch.tifrueh.conjugateur.plist",
    "~/Library/Preferences/conjugateur.plist",
    "~/Library/Saved Application State/ch.tifrueh.conjugateur.savedState",
  ]
end
