cask "pairhop" do
  version "1.0"
  sha256 "c955de8bce745c83b73ab4b25702b2a4a1396af295c540bdcc733cfe3fb7c305"

  url "https://pairhop.roushan.xyz/download/Pairhop-#{version}.dmg"
  name "Pairhop"
  desc "Mirror and control an Android phone"
  homepage "https://pairhop.roushan.xyz/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: :sonoma

  app "Pairhop.app"

  zap trash: [
    "~/Library/Containers/xyz.roushan.pairhop",
    "~/Library/Containers/xyz.roushan.pairhop.files",
    "~/Library/Group Containers/933FJ3W655.xyz.roushan.pairhop",
  ]
end
