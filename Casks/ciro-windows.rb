cask "ciro-windows" do
  version "0.3.0"
  sha256 "eb8361ae4036e7c57ec8fd51d4580f99b54a364195c8213300eb4722c0b165c0"

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
