cask "tameo" do
  version "0.1.11"
  sha256 "6d9144a48994878731e2b8c0a5c530b7b1ec8d06239280e671f1daaba9e23e73"

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
