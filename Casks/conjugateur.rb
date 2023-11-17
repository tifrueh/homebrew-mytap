cask "conjugateur" do
  version "1.0.0-beta-3"

  on_ventura do
    sha256 "2616fe6067a45bfb2182de85a4b5299de890e129866c06aa1f3d5fd5889b6a5f"

    url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-13-universal-v#{version}.pkg"

    pkg "Conjugateur-macOS-13-universal-v#{version}.pkg"
  end
  on_sonoma do
    sha256 "fe6dec5f7085efb6233cf66618d832ebed1ab939fac007fc57e8ef4149c14d20"

    url "https://github.com/tifrueh/conjugateur/releases/download/v#{version}/Conjugateur-macOS-14-universal-v#{version}.pkg"

    pkg "Conjugateur-macOS-14-universal-v#{version}.pkg"
  end

  name "conjugateur"
  desc "French verb conjugation trainer"
  homepage "https://github.com/tifrueh/conjugateur"

  depends_on macos: [
    :ventura,
    :sonoma,
  ]

  uninstall pkgutil: "ch.tifrueh.conjugateur"

  zap trash: [
    "~/Library/Preferences/ch.tifrueh.conjugateur.plist",
    "~/Library/Preferences/conjugateur.plist",
    "~/Library/Saved Application State/ch.tifrueh.conjugateur.savedState",
  ]
end
