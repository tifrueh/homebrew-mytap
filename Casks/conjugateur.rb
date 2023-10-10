cask "conjugateur" do
  version "1.0.0-alpha-3"
  sha256 "788adf91cddcf2b87c9535b0ecb9b10245287f2917ee564b6229dec892701739"

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
