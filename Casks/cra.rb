cask "cra" do
  arch intel: "-Intel"

  version "0.1.59"
  sha256 arm:   "fb780e8975a329f516aece389d34ae756a4cc9a524c29b1e78b3d4c91c9f6890",
         intel: "13c805ae7ae1b2b06bcd2353fd8c58dd707701bcbec3d60b997883c613106577"

  url "https://github.com/VictorKildahl/cra/releases/download/v#{version}/Cra#{arch}.dmg"
  name "Cra"
  desc "Open-source browser with Arc's spaces, pinned tabs and shortcuts"
  homepage "https://crabrowser.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cra.app"

  zap trash: [
    "~/Library/Application Support/Cra",
    "~/Library/Caches/Cra",
    "~/Library/Caches/dk.kildahl.cra",
    "~/Library/Caches/dk.kildahl.cra.helper",
    "~/Library/HTTPStorages/dk.kildahl.cra",
    "~/Library/HTTPStorages/dk.kildahl.cra.binarycookies",
    "~/Library/Preferences/dk.kildahl.cra.plist",
    "~/Library/Saved Application State/dk.kildahl.cra.savedState",
    "~/Library/WebKit/dk.kildahl.cra",
  ]
end
