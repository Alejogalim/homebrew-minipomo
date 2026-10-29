# Homebrew tap for MiniPomo

```bash
brew install --cask alejogalim/minipomo/minipomo
```

Or tap it first:

```bash
brew tap alejogalim/minipomo
brew install --cask minipomo
```

Installing through Homebrew avoids the macOS Gatekeeper prompt, because Homebrew
downloads the app without the quarantine attribute. The app itself is ad-hoc
signed, not notarized.

Updating the cask for a new release:

```bash
VERSION=0.1.3
curl -sL "https://github.com/Alejogalim/MiniPomo/releases/download/v$VERSION/MiniPomo_${VERSION}_universal.dmg" -o /tmp/m.dmg
shasum -a 256 /tmp/m.dmg
# then edit version and sha256 in Casks/minipomo.rb
```
