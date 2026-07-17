cask "tameo" do
  version "0.1.10"
  sha256 "e0b6b88690eb1643c90d59900d88743d6f5550352f1c1c65d21e3465a6d10ec3"

  url "https://github.com/supergodak/tameo/releases/download/v#{version}/Tameo.dmg",
      verified: "github.com/supergodak/tameo/"
  name "Tameo"
  desc "Clipboard manager for Apple Silicon, a Clipy successor"
  homepage "https://tameo.ati-mirai.co.jp/"

  auto_updates true
  depends_on macos: :sonoma

  app "Tameo.app"

  zap trash: [
    "~/Library/Application Support/Tameo",
    "~/Library/Caches/jp.co.ati-mirai.tameo",
    "~/Library/HTTPStorages/jp.co.ati-mirai.tameo",
    "~/Library/Preferences/jp.co.ati-mirai.tameo.plist",
    "~/Library/WebKit/jp.co.ati-mirai.tameo",
  ]
end
