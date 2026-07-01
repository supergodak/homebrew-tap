cask "tameo" do
  version "0.1.6"
  sha256 "63040356d53243ef61a4eb35a3e600855b3d9b9ac4b596c2f1df4f391fdcb814"

  url "https://github.com/supergodak/tameo/releases/download/v#{version}/Tameo.dmg",
      verified: "github.com/supergodak/tameo/"
  name "Tameo"
  desc "Clipboard manager for Apple Silicon, a Clipy successor"
  homepage "https://tameo.ati-mirai.co.jp/"

  auto_updates true
  depends_on macos: :sonoma

  app "Tameo.app"

  zap trash: [
    "~/Library/Caches/jp.co.ati-mirai.tameo",
    "~/Library/HTTPStorages/jp.co.ati-mirai.tameo",
    "~/Library/Preferences/jp.co.ati-mirai.tameo.plist",
    "~/Library/WebKit/jp.co.ati-mirai.tameo",
  ]
end
