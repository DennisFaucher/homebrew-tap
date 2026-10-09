cask "genmonbar" do
  version "0.2"
  sha256 "7bd1ede3b1027db8cf754ff5df08b06a2de6895edb80272307f981c4be5c1cae"

  url "https://github.com/DennisFaucher/GenMonBar/releases/download/v#{version}/GenMonBar.app.zip"
  name "GenMonBar"
  desc "Menu bar widgets that show an emoji and the output of a shell command"
  homepage "https://github.com/DennisFaucher/GenMonBar"

  depends_on macos: ">= :ventura"

  app "GenMonBar.app"

  caveats <<~EOS
    GenMonBar is not signed with an Apple Developer ID, so macOS Gatekeeper
    will block it on first launch. To allow it, either right-click
    /Applications/GenMonBar.app and choose "Open", or run:

      xattr -dr com.apple.quarantine "#{appdir}/GenMonBar.app"

    To skip the quarantine attribute at install time instead:

      brew reinstall --cask --no-quarantine genmonbar
  EOS

  zap trash: [
    "~/Library/Application Support/GenMonBar",
  ]
end
