cask "blink" do
  version "0.7.1"
  sha256 "ccbe18c112a348d1193d5aa7d4af8c55dbea3caec2da1bff7e28b49b763d0b7e"

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
