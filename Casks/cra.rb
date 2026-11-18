cask "cra" do
  arch intel: "-Intel"

  version "0.1.48"
  sha256 arm:   "aa835f664c77d0a5709f0cc2056ef50b5c0739e006159b862b983c2252a90640",
         intel: "fd0becfd14aef938e586d8465d5cd21e00a96cbcb19653584028eaf7b2d46551"

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
