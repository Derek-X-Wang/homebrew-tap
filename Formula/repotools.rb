class Repotools < Formula
  desc "Declarative CLI tool manager for repositories"
  homepage "https://github.com/Derek-X-Wang/repotools"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.0.0/repotools-v0.0.0-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.0.0/repotools-v0.0.0-darwin-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.0.0/repotools-v0.0.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.0.0/repotools-v0.0.0-linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "repotools"
  end

  test do
    assert_match "repotools", shell_output("#{bin}/repotools --help")
  end
end
