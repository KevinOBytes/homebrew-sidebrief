cask "sidebrief" do
  version "1.0.1"
  sha256 "229b0e42872f462e69e94d2043aa4144fe006ab5781ef3fb8eed0cfa96d8137a"

  url "https://github.com/KevinOBytes/sidebrief/releases/download/v#{version}/Sidebrief.dmg"
  name "Sidebrief"
  desc "Native macOS meeting copilot with dual-stream audio capture and live AI assistance"
  homepage "https://github.com/KevinOBytes/sidebrief"

  depends_on macos: :sonoma

  app "Sidebrief.app"

  zap trash: [
    "~/Library/Application Support/com.sidebrief.macos",
    "~/Library/Caches/com.sidebrief.macos",
    "~/Library/Preferences/com.sidebrief.macos.plist",
    "~/Library/Saved Application State/com.sidebrief.macos.savedState",
  ]
end
