cask "tameo" do
  version "0.1.13"
  sha256 "17fba03734fa45418b434c6f09cd48ff06f153bb0bce2f02850a2e3d288b5abe"

  url "https://github.com/supergodak/tameo/releases/download/v#{version}/Tameo.dmg"
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
