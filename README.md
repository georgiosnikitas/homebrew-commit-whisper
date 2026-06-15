# homebrew-commit-sage

Homebrew tap for [commit-sage](https://github.com/georgiosnikitas/commit-sage) — deterministic git
history analysis with a grounded, bring-your-own-key AI narrative, terminal-native.

## Install

```bash
brew tap georgiosnikitas/commit-sage
brew install commit-sage
```

Then run it anywhere:

```bash
commit-sage .
```

## Supported platforms

This tap installs the prebuilt [Node SEA](https://nodejs.org/api/single-executable-applications.html)
binaries from the tagged GitHub release (no Node.js runtime required):

- macOS (Apple Silicon / arm64)
- Linux (x64)

On other platforms (Intel macOS, ARM Linux, Windows), install from npm instead —
`npm install -g commitsage` — or download a binary from the
[releases](https://github.com/georgiosnikitas/commit-sage/releases).

## Updating the formula

Each release pins the binary URLs and their SHA256 checksums. When a new `vX.Y.Z` of commit-sage is
published, bump `version`, the `url`s, and the `sha256`s in
[`Formula/commit-sage.rb`](Formula/commit-sage.rb).

## License

[MIT](https://github.com/georgiosnikitas/commit-sage/blob/main/LICENSE)
