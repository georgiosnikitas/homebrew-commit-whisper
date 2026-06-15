# Homebrew formula for commit-whisper — installs the prebuilt Node SEA single-file
# binary from the tagged GitHub release (no Node.js runtime required).
class CommitWhisper < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-whisper"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/georgiosnikitas/commit-whisper/releases/download/v1.0.3/commit-whisper-macos-arm64"
      sha256 "a2d4463420f0383128629e5d18d6af47aef6107a67a252d924f39101faf063d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/georgiosnikitas/commit-whisper/releases/download/v1.0.3/commit-whisper-linux-x64"
      sha256 "b356c5f47b7ed6897d574a86eb50682cb9dc68de078162236d5f91b68a7de2f2"
    end
  end

  def install
    # The release asset is a single raw binary (named per platform); install it as `commit-whisper`.
    bin.install Dir["commit-whisper-*"].first => "commit-whisper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-whisper --version")
  end
end
