cask "sidebrief" do
  version "1.0.0"
  sha256 "09f7d13be0f767b5f97113d433dd47d3ed7e744775afe5fd3b592f7e773774ed"

  url "https://github.com/KevinOBytes/sidebrief/releases/download/v#{version}/Sidebrief.dmg"
  name "Sidebrief"
  desc "Native macOS meeting copilot with dual-stream audio capture and live AI assistance"
  homepage "https://github.com/KevinOBytes/sidebrief"

  depends_on macos: ">= :sonoma"

  app "Sidebrief.app"

  zap trash: [
    "~/Library/Application Support/com.sidebrief.macos",
    "~/Library/Caches/com.sidebrief.macos",
    "~/Library/Preferences/com.sidebrief.macos.plist",
    "~/Library/Saved Application State/com.sidebrief.macos.savedState",
  ]
end
