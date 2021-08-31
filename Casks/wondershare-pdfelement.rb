cask "wondershare-pdfelement" do
  version :latest
  sha256 :no_check

  url "https://download.wondershare.com/mac-pdfelement_full5237.dmg"
  name "wondershare-pdfelement"
  desc "Wondershare's PDF editor"
  homepage "https://pdf.wondershare.com"

  installer script: {
    executable: "Wondershare PDFelement Installer.app/Contents/MacOS/Product Installer"
  }

  uninstall quit: [
    "com.wondershare.PDFelement",
    "com.wondershare.helper_compact"
     ],

    delete: [
      "~/Library/Application Support/com.wondershare.PDFelement",
      "~/Library/Application Support/com.wondershare.Installer",
      "~/Library/Caches/PDFelement",
      "~/Library/Caches/com.wondershare.PDFelement",
      "~/Library/Saved Application State/com.wondershare.PDFelement.savedState",
      "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.wondershare.PDFelement",
      "/Applications/PDFelement.app",
    ]
end
