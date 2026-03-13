cask "devian-desktop" do
  version "1.1.2"
  sha256 :no_check

  url "https://github.com/devian-labs/devian-web/releases/download/v#{version}/Devian.Desktop_#{version}_aarch64.dmg"
  name "Devian"
  desc "Local AI Desktop Environment for Developers"
  homepage "https://github.com/devian-labs/devian-web"

  app "Devian Desktop.app", target: "Devian.app"

  zap trash: [
    "~/Library/Application Support/com.devian.desktop",
    "~/Library/Caches/com.devian.desktop",
    "~/Library/Preferences/com.devian.desktop.plist",
    "~/Library/Saved Application State/com.devian.desktop.savedState",
    "~/Library/WebKit/com.devian.desktop"
  ]
end
