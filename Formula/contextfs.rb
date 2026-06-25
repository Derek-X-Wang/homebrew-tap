class Contextfs < Formula
  desc "AI-native mountable filesystem for Git repos and package registries"
  homepage "https://github.com/Derek-X-Wang/ctxfs"
  version "0.1.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Derek-X-Wang/ctxfs/releases/download/v0.1.3/ctxfs-#{version}-darwin-arm64.tar.gz"
      sha256 "e59f1b6e80af96af5b8922ee8641cb6029ac0107e5a984ff31a216f2a287cc03"
    end
    on_intel do
      url "https://github.com/Derek-X-Wang/ctxfs/releases/download/v0.1.3/ctxfs-#{version}-darwin-x86_64.tar.gz"
      sha256 "677784044b7383b1991e7c2ae2c14add11cb391108ac653060063ceedbcca973"
    end
  end

  conflicts_with cask: "contextfs"

  def install
    bin.install "ctxfs"
  end

  test do
    system "#{bin}/ctxfs", "--help"
  end
end
