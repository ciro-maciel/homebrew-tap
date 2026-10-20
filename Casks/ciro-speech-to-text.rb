cask "ciro-speech-to-text" do
  version "1.36.0"
  sha256 "9a53f75c7201c43a0ea39f2d86cfdca230265a1d7fa3f159ee7f9015416005b2"

  url "https://github.com/ciro-maciel/speech-to-text/releases/download/v#{version}/Speech-to-Text-#{version}-macos.dmg"
  name "Speech to Text"
  desc "Local dictation: press a key, speak, and the text is typed at the cursor"
  homepage "https://ciromaciel.click/tools/speech-to-text?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Speech to Text.app"

  uninstall quit: "click.ciromaciel.speech-to-text"

  zap trash: [
    "~/Library/Application Support/click.ciromaciel.speech-to-text",
    "~/Library/Application Support/speech-to-text",
    "~/Library/Caches/click.ciromaciel.speech-to-text",
    "~/Library/HTTPStorages/speech-to-text.binarycookies",
    "~/Library/Logs/click.ciromaciel.speech-to-text",
    "~/Library/Preferences/click.ciromaciel.speech-to-text.plist",
    "~/Library/WebKit/click.ciromaciel.speech-to-text",
  ]
end
