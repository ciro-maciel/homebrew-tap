cask "ciro-screenshots" do
  version "0.3.5"
  sha256 "41a7f4afb073219e4270e8f17bd29e5b406a8523e5ef1798eb25ee7414e4406d"

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
