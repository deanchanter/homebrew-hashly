cask "hashly" do
  version "0.2.3"
  sha256 "07efc290283100a779e2244cf9a693ca6fb317104ea8cfcee86df842cebdb86b"

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
