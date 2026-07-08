cask "fuseo" do
  version "0.1.4"
  sha256 "01d83cc471020fc0b7f78ebc234a97d0f39e99db5bf06a5ae45ca67ef37d7881"

  url "https://github.com/supergodak/fuseo/releases/download/v#{version}/Fuseo-#{version}.dmg",
      verified: "github.com/supergodak/fuseo/"
  name "Fuseo"
  desc "Local-only tool to redact ID documents for safe submission"
  homepage "https://fuseo.ati-mirai.co.jp/"

  depends_on macos: ">= :sonoma"

  app "Fuseo.app"

  zap trash: [
    "~/Library/Application Support/jp.co.ati-mirai.fuseo",
    "~/Library/Caches/jp.co.ati-mirai.fuseo",
    "~/Library/Preferences/jp.co.ati-mirai.fuseo.plist",
    "~/Library/Saved Application State/jp.co.ati-mirai.fuseo.savedState",
  ]
end
