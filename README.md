# Homebrew tap of Ciro Cesar Maciel

Six free, open-source Mac apps by [Ciro Cesar Maciel](https://ciromaciel.click/?ref=homebrew-tap), signed with Developer ID and notarized by Apple.

```bash
brew install --cask ciro-maciel/tap/ciro-cleaner
```

| App | Install | Source |
| --- | --- | --- |
| [Cleaner](https://ciromaciel.click/tools/cleaner?ref=homebrew-tap): a Mac cleaner that shows everything before it deletes anything | `brew install --cask ciro-maciel/tap/ciro-cleaner` | [cleaner](https://github.com/ciro-maciel/cleaner) |
| [Screenshots](https://ciromaciel.click/tools/screenshots?ref=homebrew-tap): screenshots and screen recording | `brew install --cask ciro-maciel/tap/ciro-screenshots` | [screenshots](https://github.com/ciro-maciel/screenshots) |
| [Speech to Text](https://ciromaciel.click/tools/speech-to-text?ref=homebrew-tap): press a key, speak, and the text is typed | `brew install --cask ciro-maciel/tap/ciro-speech-to-text` | [speech-to-text](https://github.com/ciro-maciel/speech-to-text) |
| [Text to Speech](https://ciromaciel.click/tools/text-to-speech?ref=homebrew-tap): select text, press one shortcut, hear it | `brew install --cask ciro-maciel/tap/ciro-text-to-speech` | [text-to-speech](https://github.com/ciro-maciel/text-to-speech) |
| [Assistant](https://ciromaciel.click/tools/voice-assistant?ref=homebrew-tap): a voice assistant for Claude Code | `brew install --cask ciro-maciel/tap/ciro-voice-assistant` | [voice-assistant](https://github.com/ciro-maciel/voice-assistant) |
| [Windows](https://ciromaciel.click/tools/windows?ref=homebrew-tap): snap windows by shortcut or by dragging | `brew install --cask ciro-maciel/tap/ciro-windows` | [windows](https://github.com/ciro-maciel/windows) |

All six need Apple Silicon. Speech to Text and Text to Speech run on macOS 11 or newer; the others on macOS 14 or newer.

The casks point to the `.dmg` of each app's GitHub release. After a release, `scripts/bump.sh` updates version and sha256 from the latest release.

MIT license.
