cask "minipomo" do
  version "0.1.6"
  sha256 "51d8279987874eaa510f004f24539171e715601ba03cf0befa8ebd2f5fec89df"

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
