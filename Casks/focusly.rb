cask "focusly" do
  version "2.0.0"
  sha256 "04677521af8c4cd4a3c54b040188c36ae5827ac2de65e6a2f130d6bbe53bdbd1"

  url "https://focusly.roushan.xyz/download/Focusly-#{version}.dmg"
  name "Focusly"
  desc "Floating focus timer that shows your task and calls you back when you drift"
  homepage "https://focusly.roushan.xyz/"

  livecheck do
    url "https://github.com/Rakesh1002/Focusly"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Focusly.app"

  zap trash: [
    "~/Library/Containers/unquest.focusly",
    "~/Library/Preferences/unquest.focusly.plist",
  ]
end
