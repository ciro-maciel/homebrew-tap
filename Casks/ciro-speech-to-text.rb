cask "ciro-speech-to-text" do
  version "2.0.6"
  sha256 "2ad8067b663040f95c1248ea11fb28b000de0f79b1f4ed689d09c9bf62ee50da"

  url "https://github.com/ciro-maciel/speech-to-text/releases/download/v#{version}/Speech-to-Text-#{version}-macos.dmg"
  name "Speech to Text"
  desc "Local dictation: press a key, speak, and the text is typed at the cursor"
  homepage "https://ciromaciel.click/tools/speech-to-text?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Speech to Text.app"

  uninstall quit: "click.ciromaciel.speech-to-text"

  zap trash: [
    "~/Library/Application Support/click.ciromaciel.speech-to-text",
    "~/Library/Application Support/speech-to-text",
    "~/Library/Caches/click.ciromaciel.speech-to-text",
    "~/Library/Logs/click.ciromaciel.speech-to-text",
    "~/Library/Preferences/click.ciromaciel.speech-to-text.plist",
  ]
end
