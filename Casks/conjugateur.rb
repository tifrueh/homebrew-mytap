cask "conjugateur" do
  version "1.0.0-beta-4"
  sha256 "bddbd89aab9e63bd2157794d44764e0d83508e6bae0df4ca795dc21e1be2465b"

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
