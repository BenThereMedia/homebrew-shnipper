cask "shnipper" do
  version "2026.10.22"
  sha256 "374bb967f670178b06a7cc1fa6b987afc630267495fc123b489197f107209221"

  url "https://storage.googleapis.com/glambot-7--shnipper-downloads/by_version/2026.10.22/shnipper-macos-arm64.zip"
  name "Shnipper"
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
