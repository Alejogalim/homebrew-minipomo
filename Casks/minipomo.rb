cask "minipomo" do
  version "0.1.2"
  sha256 "4b067fc9115d211f53affa77b3655aa2ddc78d42586321ceed5699cada39df7c"

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
