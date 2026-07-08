cask "fuseo" do
  version "0.1.5"
  sha256 "9ea329abd2fbfec7385324c12fdc9e229b4b5edf4900a978d7b79defa0d6f992"

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
