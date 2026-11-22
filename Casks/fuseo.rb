cask "fuseo" do
  version "0.4.1"
  sha256 "1315185d7374adacda8a9019a1e2b97f2004b623c77c007e14ade08d266d0f16"

  url "https://github.com/supergodak/fuseo/releases/download/v#{version}/Fuseo-#{version}.dmg"
  name "Fuseo"
  desc "Local-only tool to redact ID documents for safe submission"
  homepage "https://fuseo.ati-mirai.co.jp/"

  livecheck do
    url "https://fuseo.ati-mirai.co.jp/appcast.xml"
    # appcast の sparkle:version（ビルド番号）は使わず、表示版だけを見る。
    strategy :sparkle do |item|
      item.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fuseo.app"

  zap trash: [
    "~/Library/Application Support/Fuseo",
    "~/Library/Application Support/jp.co.ati-mirai.fuseo",
    "~/Library/Caches/jp.co.ati-mirai.fuseo",
    "~/Library/HTTPStorages/jp.co.ati-mirai.fuseo",
    "~/Library/Preferences/jp.co.ati-mirai.fuseo.plist",
    "~/Library/Saved Application State/jp.co.ati-mirai.fuseo.savedState",
  ]
end
