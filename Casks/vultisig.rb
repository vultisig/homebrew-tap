cask "vultisig" do
  version "1.37.57"
  sha256 "3b395275042382387befd9b2a270c956d8b95723b813f66efcd5f500466891b1"

  url "https://github.com/vultisig/vultisig-ios/releases/download/v#{version}/VultisigApp.v#{version}.signed.pkg",
      verified: "github.com/vultisig/vultisig-ios/"
  name "Vultisig"
  desc "Secure seedless multichain crypto wallet"
  homepage "https://vultisig.com/"

  livecheck do
    url "https://github.com/vultisig/vultisig-ios"
    strategy :github_latest
  end

  depends_on macos: :sequoia

  pkg "VultisigApp.v#{version}.signed.pkg"

  uninstall quit:    "com.vultisig.wallet",
            pkgutil: "com.vultisig.wallet"

  zap trash: [
    "~/Library/Application Support/com.vultisig.wallet",
    "~/Library/Caches/com.vultisig.wallet",
    "~/Library/HTTPStorages/com.vultisig.wallet",
    "~/Library/Preferences/com.vultisig.wallet.plist",
    "~/Library/Saved Application State/com.vultisig.wallet.savedState",
  ]
end
