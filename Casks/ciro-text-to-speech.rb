cask "ciro-text-to-speech" do
  version "0.4.0"
  sha256 "6359d8daee6d41fb1bdc94d1f0fcc428a412534f127393bd16b633fedd131e4c"

  url "https://github.com/ciro-maciel/text-to-speech/releases/download/v#{version}/Text-to-Speech-#{version}-macos.dmg"
  name "Text to Speech"
  desc "Reads the selected text aloud with one shortcut"
  homepage "https://ciromaciel.click/tools/text-to-speech?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Text to Speech.app"

  uninstall quit: "click.ciromaciel.text-to-speech"

  zap trash: [
    "~/Library/Application Support/click.ciromaciel.text-to-speech",
    "~/Library/Caches/click.ciromaciel.text-to-speech",
    "~/Library/Logs/click.ciromaciel.text-to-speech",
    "~/Library/Preferences/click.ciromaciel.text-to-speech.plist",
    "~/Library/WebKit/click.ciromaciel.text-to-speech",
  ]
end
