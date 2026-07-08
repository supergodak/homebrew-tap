cask "fuseo" do
  version "0.1.1"
  sha256 "86c990b9563f0c354739929cf6ffd3480f5e18102aa5d8f3ccc45786bc778010"

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
