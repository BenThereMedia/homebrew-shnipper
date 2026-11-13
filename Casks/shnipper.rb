cask "shnipper" do
  version "2026.11.13"
  sha256 "5ea901cec1354142b58bbfa2ccb5480fe0df1206e6f6d3020fe7a4a7981a4041"

  url "https://storage.googleapis.com/glambot-7--shnipper-downloads/by_version/2026.11.13/shnipper-macos-arm64.zip"
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
