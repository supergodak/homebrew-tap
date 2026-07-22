cask "tameo" do
  version "0.1.12"
  sha256 "59b55cc2a1513a868f4cf69f6aa6d53ff3829da198fadd05b328cedf64a1bfcd"

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
