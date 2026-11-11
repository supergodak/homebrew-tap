cask "fuseo" do
  version "0.3.0"
  sha256 "001a112d0317db7799380866cc5400c3f4fe8daf372a6ac0d6e43ef9d5fd78a4"

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
