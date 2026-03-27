cask "blink" do
  version "0.5.0"
  sha256 "c272c51f7e7d9342a29596b3711b2ad965bb865350dc7f9dd4d0854cc0b9efc7"

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
