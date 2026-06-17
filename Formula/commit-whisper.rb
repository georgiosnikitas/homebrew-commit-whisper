# Homebrew formula for commit-whisper — installs the published npm tarball and
# runs on Homebrew's Node.js. Regenerated on every release by CI.
class CommitWhisper < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-whisper"
  url "https://registry.npmjs.org/commit-whisper/-/commit-whisper-1.0.8.tgz"
  sha256 "1af447cd6be0e2bdd64a29e9b36607807d29b2bab6e5102657c428018f09710b"
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
