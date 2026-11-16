cask "shnipper" do
  version "2026.11.16"
  sha256 "fe401e7ac6560e31ae3d20c392bc14bd5368226525bbf7e36bc4f568854b3f70"

  url "https://storage.googleapis.com/glambot-7--shnipper-downloads/by_version/2026.11.16/shnipper-macos-arm64.zip"
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
