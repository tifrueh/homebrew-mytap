cask "conjugateur" do
  version "1.0.0-beta-4"
  sha256 "5ff3af44b0f6ac84df5bb57c3d1b7b11957e94820787f89dbb4f4a780afa4499"

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
