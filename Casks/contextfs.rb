cask "contextfs" do
  version "0.1.2"
  sha256 "641c6ce4931aba30393432f6abad4296958cc48f25cf52bba62186a3790fbe91"

  url "https://github.com/Derek-X-Wang/ctxfs/releases/download/v0.1.2/ContextFS-#{version}.dmg"
  name "ContextFS"
  desc "AI-native mountable filesystem for Git repos and package registries"
  homepage "https://github.com/Derek-X-Wang/ctxfs"

  app "ContextFS.app"
  binary "#{appdir}/ContextFS.app/Contents/MacOS/ctxfs"

  # No conflicts_with stanza on the cask: Homebrew Cask only accepts
  # `conflicts_with cask:`, not `formula:`. The reciprocal declaration
  # on Formula/contextfs.rb (`conflicts_with cask: "contextfs"`) is
  # sufficient — brew refuses to install the formula when this cask
  # is present.

  zap trash: [
    "~/.ctxfs",
    "~/Library/LaunchAgents/ai.ctxfs.daemon.plist",
    "~/Library/Preferences/ai.ctxfs.companion.plist",
  ]
end
