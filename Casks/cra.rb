cask "cra" do
  arch intel: "-Intel"

  version "0.1.42"
  sha256 arm:   "5902356919ae01f665f6c92a463366ea16662ae65144b25dedbe60c9ca8d4a88",
         intel: "d5d74fea2f4a572347fe6e16286849418ef3a4893f071c7b0ac5a7f1878891e1"

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
