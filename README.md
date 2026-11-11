# Homebrew tap

[Cra](https://crabrowser.app), the open-source browser that keeps Arc's spaces, pinned tabs
and shortcuts.

```sh
brew install --cask victorkildahl/tap/cra
```

Cra updates itself, like Arc did, so `brew upgrade` leaves it alone unless you pass
`--greedy`. `brew uninstall --zap cra` also removes your spaces, tabs and settings.

The cask follows Cra's latest release within the hour: `.github/workflows/bump-cra.yml`
reads the release's `SHA256SUMS.txt` and commits the new version.
