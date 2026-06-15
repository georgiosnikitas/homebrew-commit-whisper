# Homebrew formula for commit-whisper — installs the prebuilt Node SEA single-file
# binary from the tagged GitHub release (no Node.js runtime required).
class CommitWhisper < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-whisper"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/georgiosnikitas/commit-whisper/releases/download/v1.0.1/commit-whisper-macos-arm64"
      sha256 "67aef573b0e8927259f91965c805a3feca44333e403cd945e13f0c8e023d8aaa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/georgiosnikitas/commit-whisper/releases/download/v1.0.1/commit-whisper-linux-x64"
      sha256 "322d21603a3e1c67996bf63121539e5a73d47842ea94f33c33b61ab299435465"
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
