cask "blink" do
  version "0.8.4"
  sha256 "65fd665b33595af89bb0bac65fed47b6d17a4df55367abf09752a6a3665fab59"

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
