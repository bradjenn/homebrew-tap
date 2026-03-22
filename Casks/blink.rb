cask "blink" do
  version "0.3.1"
  sha256 "a2d032add7dcf1ad43810d887af4715316f936b329f8f8f4a10ee9fa70b90a08"

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
