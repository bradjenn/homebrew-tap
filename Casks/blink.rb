cask "blink" do
  version "0.2.0"
  sha256 "e797e823c805154e6d08f0b581ddd1020c1fdb83dbc8b164ba3fd05b58f2b4aa"

  url "https://github.com/bradjenn/blink/releases/download/v#{version}/Blink.dmg"
  name "Blink"
  desc "Terminal workspace with column-based tiling"
  homepage "https://github.com/bradjenn/blink"

  depends_on macos: ">= :sonoma"

  app "Blink.app"

  zap trash: [
    "~/Library/Preferences/com.blink.app.plist",
    "~/Library/Application Support/com.blink.app",
  ]
end
