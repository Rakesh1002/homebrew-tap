cask "focusly" do
  version "2.0.0"
  sha256 "209e60bee5323b76fe9c0d8c9a1e6b9eb2fd9196aab21700e5acda7fa886daac"

  url "https://github.com/Rakesh1002/Focusly/releases/download/v#{version}/Focusly-#{version}.dmg"
  name "Focusly"
  desc "Floating focus timer that shows your task and calls you back when you drift"
  homepage "https://focusly.unquest.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Focusly.app"

  zap trash: [
    "~/Library/Containers/unquest.focusly",
    "~/Library/Preferences/unquest.focusly.plist",
  ]
end
