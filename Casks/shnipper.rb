cask "shnipper" do
  version "2026.11.15"
  sha256 "6a988e9d0196de66b61833a63072b29d676c7be10619a2c37db903bdc8b77002"

  url "https://storage.googleapis.com/glambot-7--shnipper-downloads/by_version/2026.11.15/shnipper-macos-arm64.zip"
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
