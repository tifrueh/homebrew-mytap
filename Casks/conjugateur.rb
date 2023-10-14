cask "conjugateur" do
  version "1.0.0-beta"
  
  depends_on macos: ">= :ventura"

  on_sonoma do
    sha256 "399fdd6681bf0919724abc7c57004968b082036515f90d4a49cae70d3dcfcf09"
    url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-Sonoma-universal-v#{version}.pkg"
    pkg "Conjugateur-macOS-Sonoma-universal-v#{version}.pkg"
  end

  on_ventura do
    sha256 "9f0d233289d71d29a1225674baaaff5dce06e708d69f99d8128aba4be937ac60"
    url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-Ventura-universal-v#{version}.pkg"
    pkg "Conjugateur-macOS-Ventura-universal-v#{version}.pkg"
  end

  name "conjugateur"
  desc "French verb conjugation trainer"
  homepage "https://github.com/tifrueh/conjugateur"

  uninstall pkgutil: "ch.tifrueh.conjugateur"

  zap trash: [
    "~/Library/Preferences/ch.tifrueh.conjugateur.plist",
    "~/Library/Preferences/conjugateur.plist",
    "~/Library/Saved Application State/ch.tifrueh.conjugateur.savedState",
  ]
end
