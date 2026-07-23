cask "fubako" do
  version "0.1.0"
  sha256 "f3c2b2779cf1b93b19913323a3b9fb172fbf9c08235720572baf51895f3bbe43"

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
