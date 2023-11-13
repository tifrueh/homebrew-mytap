cask "conjugateur" do
  version "1.0.0-beta-3"
  
  depends_on macos: ">= :sonoma"

  sha256 "fe6dec5f7085efb6233cf66618d832ebed1ab939fac007fc57e8ef4149c14d20"
  url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-14-universal-v#{version}.pkg"
  pkg "Conjugateur-macOS-14-universal-v#{version}.pkg"

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
