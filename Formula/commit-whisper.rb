# Homebrew formula for commit-whisper — installs the prebuilt Node SEA single-file
# binary from the tagged GitHub release (no Node.js runtime required).
class CommitWhisper < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-whisper"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/georgiosnikitas/commit-whisper/releases/download/v1.0.0/commit-sage-macos-arm64"
      sha256 "9e67e31fa698d717f431471c153f0ac0e83e0cb109ff99497b69183666bdcc1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/georgiosnikitas/commit-whisper/releases/download/v1.0.0/commit-sage-linux-x64"
      sha256 "c7d68acd65b4532f42c2c76a1e52f945705d9786f9fbe94e95e27a681ca9c841"
    end
  end

  def install
    # The v1.0.0 release asset is a single raw binary (named per platform); install it as `commit-whisper`.
    bin.install Dir["commit-sage-*"].first => "commit-whisper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-whisper --version")
  end
end
