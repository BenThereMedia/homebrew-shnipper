cask "shnipper" do
  version "2026.11.12"
  sha256 "b4ad35fb7b113c13f7e5ab669efed26f89f6fd44edcfb7a979e86c32cdca2a89"

  url "https://storage.googleapis.com/glambot-7--shnipper-downloads/by_version/2026.11.12/shnipper-macos-arm64.zip"
  name "Shnipper"
  desc "Automated red carpet video booth that ships each guest a share-ready clip"
  homepage "https://shnipper.com"

  livecheck do
    url "https://storage.googleapis.com/glambot-7--shnipper-downloads/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64

  app "Shnipper.app"

  zap trash: "~/Library/Application Support/Shnipper"
end
