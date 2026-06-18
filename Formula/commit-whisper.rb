# Homebrew formula for commit-whisper — installs the published npm tarball and
# runs on Homebrew's Node.js. Regenerated on every release by CI.
class CommitWhisper < Formula
  desc "Deterministic git history analysis with a grounded, BYOK AI narrative"
  homepage "https://github.com/georgiosnikitas/commit-whisper"
  url "https://registry.npmjs.org/commit-whisper/-/commit-whisper-1.1.1.tgz"
  sha256 "0113941055fc74b06e241a300f31ba41e2285e482d5fc338254e7b918f3bdb33"
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
