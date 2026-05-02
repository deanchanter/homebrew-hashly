cask "hashly" do
  version "0.2.2"
  sha256 "4b9a0e991152a5e3670297f6c11ea10f8d6f3b790e1cd3d32eb2b438596897a2"

  url "https://github.com/deanchanter/Hashly/releases/download/v#{version}/Hashly_#{version}_aarch64.dmg"
  name "Hashly"
  desc "WYSIWYG markdown reader and editor"
  homepage "https://github.com/deanchanter/Hashly"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Hashly.app"

  zap trash: [
    "~/Library/Application Support/com.hashly.app",
    "~/Library/Caches/com.hashly.app",
    "~/Library/Preferences/com.hashly.app.plist",
    "~/Library/Saved Application State/com.hashly.app.savedState",
  ]
end
