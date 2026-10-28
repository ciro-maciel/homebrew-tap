cask "ciro-text-to-speech" do
  version "1.0.0"
  sha256 "509603622f18b46ba2b06fa4d2d4109cd5087ce14341fff154b5d4d3eddca677"

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
