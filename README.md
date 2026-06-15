# homebrew-commit-whisper

Homebrew tap for [commit-whisper](https://github.com/georgiosnikitas/commit-whisper) — deterministic git
history analysis with a grounded, bring-your-own-key AI narrative, terminal-native.

## Install

```bash
brew tap georgiosnikitas/commit-whisper
brew install commit-whisper
```

Then run it anywhere:

```bash
commit-whisper .
```

## Supported platforms

This tap installs the prebuilt [Node SEA](https://nodejs.org/api/single-executable-applications.html)
binaries from the tagged GitHub release (no Node.js runtime required):

- macOS (Apple Silicon / arm64)
- Linux (x64)

On other platforms (Intel macOS, ARM Linux, Windows), install from npm instead —
`npm install -g commitwhisper` — or download a binary from the
[releases](https://github.com/georgiosnikitas/commit-whisper/releases).

## Updating the formula

Each release pins the binary URLs and their SHA256 checksums. When a new `vX.Y.Z` of commit-whisper is
published, bump `version`, the `url`s, and the `sha256`s in
[`Formula/commit-whisper.rb`](Formula/commit-whisper.rb).

## License

[MIT](https://github.com/georgiosnikitas/commit-whisper/blob/main/LICENSE)
