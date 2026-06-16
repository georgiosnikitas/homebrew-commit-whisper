# Homebrew formula for commit-whisper — installs the published npm tarball and
# runs on Homebrew's Node.js. Regenerated on every release by CI.
class CommitWhisper < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-whisper"
  url "https://registry.npmjs.org/commit-whisper/-/commit-whisper-1.0.7.tgz"
  sha256 "bbc957b935e793a6a30bbf8ec3527ad6ad7c07a6e8da64cec372d3336f9acade"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-whisper --version")
  end
end
