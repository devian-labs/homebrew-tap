cask "devian-desktop" do
  version "0.2.1"
  sha256 :no_check

  url "https://github.com/devian-labs/devian-web/releases/download/v#{version}/Devian.Desktop_#{version}_universal.dmg"
  name "Devian"
  desc "Local AI Desktop Environment for Developers"
  homepage "https://github.com/devian-labs/devian-web"

  app "Devian.app"

  zap trash: [
    "~/Library/Application Support/com.devian.desktop",
    "~/Library/Caches/com.devian.desktop",
    "~/Library/Preferences/com.devian.desktop.plist",
    "~/Library/Saved Application State/com.devian.desktop.savedState",
    "~/Library/WebKit/com.devian.desktop"
  ]
end
