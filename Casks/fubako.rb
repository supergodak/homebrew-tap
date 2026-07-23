cask "fubako" do
  version "0.2.0"
  sha256 "a2846dea0862280b7eede42f9eb5d35106e9b274e440a7286181018f636c379a"

  url "https://fubako.ati-mirai.co.jp/releases/Fubako-#{version}.dmg"
  name "Fubako"
  desc "Fully local PDF toolbox (OCR, merge, compress, watermark, Excel)"
  homepage "https://fubako.ati-mirai.co.jp/"

  livecheck do
    url "https://fubako.ati-mirai.co.jp/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fubako.app"

  zap trash: [
    "~/Library/Application Support/Fubako",
    "~/Library/Caches/jp.co.ati-mirai.fubako",
    "~/Library/HTTPStorages/jp.co.ati-mirai.fubako",
    "~/Library/Preferences/jp.co.ati-mirai.fubako.plist",
  ]
end
