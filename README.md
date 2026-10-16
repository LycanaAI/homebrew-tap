# LycanaAI Homebrew tap

Homebrew casks for apps from [LycanaAI](https://github.com/LycanaAI).

## NotchCue

[NotchCue](https://github.com/LycanaAI/notchcue) is a teleprompter for macOS that hangs from the notch, right under your camera, and follows your voice.

```sh
brew install --cask lycanaai/tap/notchcue
```

This installs NotchCue.app into `/Applications` and the `notchcue` command (for example `notchcue script.txt`). Update with `brew upgrade --cask notchcue`. `brew uninstall --zap --cask notchcue` also removes its settings and log.

Needs macOS 13 (Ventura) or later. Releases are signed and notarised by Apple.

## Updating the cask

NotchCue's `make publish` updates `version` and `sha256` in `Casks/notchcue.rb` and pushes them here. See [docs/releasing.md](https://github.com/LycanaAI/notchcue/blob/main/docs/releasing.md) in the NotchCue repo.
