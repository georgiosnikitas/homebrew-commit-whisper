# Homebrew formula for commit-whisper — installs the published npm tarball and
# runs on Homebrew's Node.js. Regenerated on every release by CI.
class CommitWhisper < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-whisper"
  url "https://registry.npmjs.org/commit-whisper/-/commit-whisper-1.1.5.tgz"
  sha256 "1eda51ec56898c5d09cc0278ac1818e22ace45472be04d8c8d7717d3b8e8233d"
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
