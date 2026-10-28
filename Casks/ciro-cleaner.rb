cask "ciro-cleaner" do
  version "0.4.3"
  sha256 "8677eb7bd30fe7b3c120438651469083ff4de33bae9d6d89b73812bce2cd6747"

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
