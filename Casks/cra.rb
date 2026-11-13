cask "cra" do
  arch intel: "-Intel"

  version "0.1.43"
  sha256 arm:   "3232abe33974926b200c77b97e9b20e719f06ae03d07aca8433de8d39caea3cf",
         intel: "b559b901059e3f13cac29619e0b5d6e043fda0f52433027e01eed221a19fde9a"

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
