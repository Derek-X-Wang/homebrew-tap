class Contextfs < Formula
  desc "AI-native mountable filesystem for Git repos and package registries"
  homepage "https://github.com/Derek-X-Wang/ctxfs"
  version "0.1.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Derek-X-Wang/ctxfs/releases/download/v0.1.2/ctxfs-#{version}-darwin-arm64.tar.gz"
      sha256 "5e7eea7a5c094549a37a9540b58d1c8ffd8e1b60a664ae36d80bd0ec65ca5082"
    end
    on_intel do
      url "https://github.com/Derek-X-Wang/ctxfs/releases/download/v0.1.2/ctxfs-#{version}-darwin-x86_64.tar.gz"
      sha256 "8784a6fbbb2406db84e0bd6812628baf5db3494985c911194573b3f60572fd28"
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
