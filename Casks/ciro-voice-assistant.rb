cask "ciro-voice-assistant" do
  version "0.5.0"
  sha256 "1b8e09c4adea0673f9f9e1dc3044c70862c0f2c5f01dc828ee5eba7c72ccbe8d"

  url "https://github.com/ciro-maciel/voice-assistant/releases/download/v#{version}/Assistant-#{version}-macos.dmg"
  name "Assistant"
  desc "Voice assistant for Claude Code"
  homepage "https://ciromaciel.click/tools/voice-assistant?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: [
    "ffmpeg",
    "sox",
    "whisper-cpp",
  ]
  depends_on macos: :sonoma

  app "Assistant.app"

  uninstall quit: "click.ciromaciel.voice-assistant"

  zap trash: [
    "~/.config/voice-assistant",
    "~/Library/Application Support/voice-assistant",
    "~/Library/HTTPStorages/click.ciromaciel.voice-assistant",
    "~/Library/Logs/voice-assistant",
    "~/Library/Preferences/click.ciromaciel.voice-assistant.plist",
  ]

  caveats <<~EOS
    Assistant needs Claude Code, signed in, and a Whisper model. Download one with
    scripts/download-model.sh from a clone of the repository:
      https://github.com/ciro-maciel/voice-assistant
  EOS
end
