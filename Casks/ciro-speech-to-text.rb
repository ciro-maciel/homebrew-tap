cask "ciro-speech-to-text" do
  version "2.0.5"
  sha256 "c16717013d3eada4eafb72a5131c3db848343e41d724da65a4e819764dfae93f"

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
