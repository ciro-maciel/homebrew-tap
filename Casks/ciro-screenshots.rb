cask "ciro-screenshots" do
  version "0.3.0"
  sha256 "c3b24ed1ec7cd839a46902def16ae48d9e2934df7e2fe7d9ec3b9d36fffb8e1a"

  url "https://github.com/ciro-maciel/screenshots/releases/download/v#{version}/Screenshots-#{version}-macos.dmg"
  name "Screenshots"
  desc "Screenshot and screen recording app"
  homepage "https://ciromaciel.click/tools/screenshots?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Screenshots.app"

  uninstall quit: "click.ciromaciel.screenshots"

  zap trash: [
    "~/Library/Application Support/Screenshots",
    "~/Library/Caches/click.ciromaciel.screenshots",
    "~/Library/Preferences/click.ciromaciel.screenshots.plist",
  ]
end
