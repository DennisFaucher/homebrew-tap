# DennisFaucher Homebrew Tap

## GenMonBar

A macOS menu bar app inspired by the XFCE Generic Monitor plugin: each widget shows an emoji followed by the output of a shell command.

```sh
brew install --cask DennisFaucher/tap/genmonbar
```

Or tap first:

```sh
brew tap DennisFaucher/tap
brew install --cask genmonbar
```

> GenMonBar is not Developer ID signed/notarized, so macOS Gatekeeper blocks it on first launch. Right-click the app and choose **Open**, or run `xattr -dr com.apple.quarantine "/Applications/GenMonBar.app"`. You can also install with `--no-quarantine`.

Updating:

```sh
brew upgrade --cask genmonbar
```

Uninstalling (add `--zap` to also remove its config):

```sh
brew uninstall --cask genmonbar
```
