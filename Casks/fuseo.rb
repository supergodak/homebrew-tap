cask "fuseo" do
  version "0.1.0"
  sha256 "0b3b9c9690a538be5aaeccec75f98b4d003035051755584bfcf83756835d8397"

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
