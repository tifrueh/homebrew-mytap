cask "conjugateur" do
  version "1.0.0-alpha-2"
  sha256 "327bf29eab78fe814698e3d42d736fc9f200dd4bdd52fef0fb3d31980e9946da"

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
