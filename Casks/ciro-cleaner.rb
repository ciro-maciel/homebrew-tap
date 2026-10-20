cask "ciro-cleaner" do
  version "0.4.0"
  sha256 "303991caf782308e4fda288db11f8adad9a87429da248d3164dcc65d9dfa8e0c"

  url "https://github.com/ciro-maciel/cleaner/releases/download/v#{version}/Cleaner-#{version}-macos.dmg"
  name "Cleaner"
  desc "Disk cleaner that shows everything before it deletes anything"
  homepage "https://ciromaciel.click/tools/cleaner?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Cleaner.app"

  uninstall launchctl: "click.ciromaciel.cleaner.helper",
            quit:      "click.ciromaciel.cleaner"

  zap trash: [
    "~/Library/Application Support/Cleaner",
    "~/Library/Caches/click.ciromaciel.cleaner",
    "~/Library/Preferences/click.ciromaciel.cleaner.plist",
  ]
end
