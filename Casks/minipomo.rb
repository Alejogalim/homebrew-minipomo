cask "minipomo" do
  version "0.1.3"
  sha256 "79240900f50b4d65d783a00dfd30ab4ccd340b194786f50db8a4538d13eb5717"

  url "https://github.com/Alejogalim/MiniPomo/releases/download/v#{version}/MiniPomo_#{version}_universal.dmg"
  name "MiniPomo"
  desc "Tiny pixel-art pomodoro companion for your desktop"
  homepage "https://github.com/Alejogalim/MiniPomo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MiniPomo.app"

  zap trash: [
    "~/Library/Application Support/com.alejogalim.minipomodoro",
    "~/Library/WebKit/com.alejogalim.minipomodoro",
  ]
end
