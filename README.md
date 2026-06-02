# Vultisig Homebrew Tap

Official [Homebrew](https://brew.sh) tap for **[Vultisig](https://vultisig.com)** — a secure, seedless, multichain crypto wallet for macOS.

## Install

```sh
brew install --cask vultisig/tap/vultisig
```

Or tap first, then install:

```sh
brew tap vultisig/tap
brew install --cask vultisig
```

This downloads the official signed package from the
[vultisig-ios releases](https://github.com/vultisig/vultisig-ios/releases) and
installs **Vultisig** into `/Applications`.

> Requires macOS 15 (Sequoia) or later.

## Upgrade

```sh
brew upgrade --cask vultisig
```

## Uninstall

```sh
brew uninstall --cask vultisig
```

To also remove app data and preferences:

```sh
brew uninstall --zap --cask vultisig
```

## Maintainers — releasing a new version

When a new release is published to
[`vultisig-ios`](https://github.com/vultisig/vultisig-ios/releases), update
[`Casks/vultisig.rb`](Casks/vultisig.rb):

1. Bump `version` to the new release number (e.g. `1.38.0`).
2. Update `sha256` with the new package checksum:

   ```sh
   VERSION=1.38.0
   curl -sL "https://github.com/vultisig/vultisig-ios/releases/download/v${VERSION}/VultisigApp.v${VERSION}.signed.pkg" \
     | shasum -a 256
   ```

3. Validate the cask before committing:

   ```sh
   brew style ./Casks/vultisig.rb
   brew audit --cask ./Casks/vultisig.rb
   ```
