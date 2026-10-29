cask "minipomo" do
  version "0.1.4"
  sha256 "fd6e6e971fc0ed19dcd832ca3379e4ade2114cd6d49f1df2f9fef50075f1d20c"

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
