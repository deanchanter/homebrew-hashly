# homebrew-hashly

A [Homebrew](https://brew.sh) tap for [Hashly](https://github.com/deanchanter/Hashly) — a WYSIWYG markdown reader and editor for macOS, built with [Tauri](https://tauri.app) v2.

## Install

```sh
brew tap deanchanter/hashly
brew install --cask hashly
```

The cask auto-strips macOS quarantine, so first launch works without a Gatekeeper warning. (The `.dmg` is unsigned — installing via direct download triggers Gatekeeper friction; installing via Homebrew does not.)

## Upgrade

```sh
brew upgrade --cask hashly
```

## Uninstall

```sh
brew uninstall --cask hashly
brew untap deanchanter/hashly
```

To also remove preferences and caches:

```sh
brew uninstall --zap --cask hashly
```

## Cask formula

The single cask formula lives at [`Casks/hashly.rb`](./Casks/hashly.rb). Updates are produced automatically by the [release workflow](https://github.com/deanchanter/Hashly/blob/main/.github/workflows/release.yml) in the main Hashly repo whenever a `vX.Y.Z` tag is pushed there: the workflow builds the `.dmg`, computes its SHA256, and opens a PR here bumping `version` + `sha256`. Merge that PR to release.

## Issues

Report Hashly bugs at [deanchanter/Hashly/issues](https://github.com/deanchanter/Hashly/issues). Tap-specific issues (cask install failure, formula syntax) belong here.
