cask "conjugateur" do
  version "1.0.0-alpha"
  sha256 "f840b4d38ee692143ac88176c72ed3d541f765d08aa81cdf2720be406c1eb967"

  url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-universal-v#{version}.pkg"
  name "conjugateur"
  desc "French verb conjugation trainer"
  homepage "https://github.com/tifrueh/conjugateur"

  depends_on macos: ">= :big_sur"

  pkg "Conjugateur-macOS-universal-v#{version}.pkg"

  uninstall pkgutil: "com.tifrueh.conjugateur"

  zap trash: [
    "~/Library/Preferences/com.tifrueh.conjugateur.plist",
    "~/Library/Preferences/conjugateur.plist",
    "~/Library/Saved Application State/com.tifrueh.conjugateur.savedState",
  ]
end
