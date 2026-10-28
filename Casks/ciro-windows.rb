cask "ciro-windows" do
  version "0.3.2"
  sha256 "3c6ab22298a1e53136b8c55928a0392a92d4344884e03a112433e6869880f28a"

  url "https://github.com/ciro-maciel/windows/releases/download/v#{version}/Windows-#{version}-macos.dmg"
  name "Windows"
  desc "Window manager: snap windows by shortcut or by dragging them to the edge"
  homepage "https://ciromaciel.click/tools/windows?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Windows.app"

  uninstall quit: "click.ciromaciel.windows"

  zap trash: [
    "~/Library/Caches/click.ciromaciel.windows",
    "~/Library/Preferences/click.ciromaciel.windows.plist",
  ]
end
