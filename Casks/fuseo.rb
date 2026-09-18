cask "fuseo" do
  version "0.2.1"
  sha256 "d7925fd624b0d4db0d3fb0dc41eff47a9c7707beb3789d15e60f1ce5e73b476e"

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
