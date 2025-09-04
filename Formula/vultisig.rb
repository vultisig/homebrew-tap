class Vultisig < Formula
  desc "Secure Seedless Multichain Crypto Wallet"
  homepage "https://vultisig.com"
  url "https://github.com/vultisig/vultisig-ios/releases/download/v1.24.3/VultisigApp.v1.24.3.signed.pkg"
  sha256 "aa00f8b7a21e6df5894cccb93298da3ef1a09519845d80ae96889386ce9775e9"

  def install
    # Install the .pkg using the macOS installer command
    system "sudo", "installer", "-pkg", "VultisigApp.v1.24.3.signed.pkg", "-target", "/"
  end

  test do
    # Verify the app was installed (adjust based on your app's executable)
    system "/Applications/Vultisig.app/Contents/MacOS/VultisigApp", "--version"
  end
end
