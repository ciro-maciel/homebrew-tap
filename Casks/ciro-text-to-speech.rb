cask "ciro-text-to-speech" do
  version "1.0.2"
  sha256 "4a7af122b40460bb795e33a30d133a40048f05a57ef74296ad24256efc88c8ea"

  url "https://github.com/ciro-maciel/text-to-speech/releases/download/v#{version}/Text-to-Speech-#{version}-macos.dmg"
  name "Text to Speech"
  desc "Reads the selected text aloud with one shortcut"
  homepage "https://ciromaciel.click/tools/text-to-speech?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Text to Speech.app"

  uninstall quit: "click.ciromaciel.text-to-speech"

  zap trash: [
    "~/Library/Application Support/click.ciromaciel.text-to-speech",
    "~/Library/Caches/click.ciromaciel.text-to-speech",
    "~/Library/Logs/click.ciromaciel.text-to-speech",
    "~/Library/Preferences/click.ciromaciel.text-to-speech.plist",
  ]
end
