# Homebrew formula for commit-sage — installs the prebuilt Node SEA single-file
# binary from the tagged GitHub release (no Node.js runtime required).
class CommitSage < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-sage"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/georgiosnikitas/commit-sage/releases/download/v1.0.0/commit-sage-macos-arm64"
      sha256 "9e67e31fa698d717f431471c153f0ac0e83e0cb109ff99497b69183666bdcc1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/georgiosnikitas/commit-sage/releases/download/v1.0.0/commit-sage-linux-x64"
      sha256 "c7d68acd65b4532f42c2c76a1e52f945705d9786f9fbe94e95e27a681ca9c841"
    end
  end

  def install
    # The release asset is a single raw binary, named per platform; install it as `commit-sage`.
    bin.install Dir["commit-sage-*"].first => "commit-sage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-sage --version")
  end
end
