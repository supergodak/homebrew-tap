cask "tameo" do
  version "0.1.5"
  sha256 "fc4d3c103a43f81b1282395cbbef800337dc9df789d0f7e82e9adf5bafdd45dc"

  url "https://github.com/supergodak/tameo/releases/download/v#{version}/Tameo.dmg",
      verified: "github.com/supergodak/tameo/"
  name "Tameo"
  desc "Clipboard manager for Apple Silicon, a Clipy successor"
  homepage "https://tameo.ati-mirai.co.jp/"

  auto_updates true
  depends_on macos: :sonoma

  app "Tameo.app"

  zap trash: [
    "~/Library/Caches/jp.co.ati-mirai.tameo",
    "~/Library/HTTPStorages/jp.co.ati-mirai.tameo",
    "~/Library/Preferences/jp.co.ati-mirai.tameo.plist",
    "~/Library/WebKit/jp.co.ati-mirai.tameo",
  ]
end
