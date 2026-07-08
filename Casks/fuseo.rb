cask "fuseo" do
  version "0.1.3"
  sha256 "4e84967c152d627f5598aa563604391ed10ecc17fb2a01b32cc13f852a54a38b"

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
