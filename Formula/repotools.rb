class Repotools < Formula
  desc "Declarative CLI tool manager for repositories"
  homepage "https://github.com/Derek-X-Wang/repotools"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.1.0/repotools-v0.1.0-darwin-arm64.tar.gz"
      sha256 "702eed0eeefb931a449494c137fd0c22d4d705f79a22f0a016acc9ccaf99581a"
    else
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.1.0/repotools-v0.1.0-darwin-x64.tar.gz"
      sha256 "3612c664429a14fe1ed7b2850265958e8a38de44fe0c9882d0e8c5c6b872d5ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.1.0/repotools-v0.1.0-linux-arm64.tar.gz"
      sha256 "88fc526e4b75af6f279afbd26f944f4d07794008f5c2cf3f97ecfd8ec5421fc2"
    else
      url "https://github.com/Derek-X-Wang/repotools/releases/download/v0.1.0/repotools-v0.1.0-linux-x64.tar.gz"
      sha256 "7c0db1c2562df7ae83cf791297c8575a3da70b99baad4d38f2962a3f068c4fe1"
    end
  end

  def install
    bin.install "repotools"
  end

  test do
    assert_match "repotools", shell_output("#{bin}/repotools --help")
  end
end
