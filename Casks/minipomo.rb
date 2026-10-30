cask "minipomo" do
  version "0.1.5"
  sha256 "73c6a86e581b21f0d5ba6a5fb3dcbbd486e372dbcc454c298841cd6b33d337dc"

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
