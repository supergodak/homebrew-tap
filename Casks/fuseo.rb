cask "fuseo" do
  version "0.2.2"
  sha256 "6f5b016390fc1a8a745c8e0f5645a6e2e2ffdd8b33c5c1e35cb7e0cb4da4b89e"

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
