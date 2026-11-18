cask "shnipper" do
  version "2026.11.18"
  sha256 "a14d1e33d7592ac0f49815b374dd767a4e513bdde2233fd9dad89695ce11f2f8"

  url "https://storage.googleapis.com/glambot-7--shnipper-downloads/by_version/2026.11.18/shnipper-macos-arm64.zip"
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
