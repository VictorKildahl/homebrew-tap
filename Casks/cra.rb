cask "cra" do
  arch intel: "-Intel"

  version "0.1.44"
  sha256 arm:   "ac5d295bf7462d5fea6d4ee85ef1d0b0ae8f3ec2e2ead89c2b5c7fd94b7aaed2",
         intel: "044bc142ecdddbed79b48d400012f36064935d8e8e5532e42dce1d0fe93c8e06"

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
