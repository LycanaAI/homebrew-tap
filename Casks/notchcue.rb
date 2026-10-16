cask "notchcue" do
  version "0.2.1"
  sha256 "3fcc115b82db60bf3f16b65d8ed607ad97a7bb17e92f12944b2213f9041f452f"

  url "https://github.com/LycanaAI/notchcue/releases/download/v#{version}/NotchCue-#{version}.zip"
  name "NotchCue"
  desc "Teleprompter that hangs from the notch and follows your voice"
  homepage "https://github.com/LycanaAI/notchcue"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "NotchCue.app"
  binary "#{appdir}/NotchCue.app/Contents/Resources/notchcue"

  zap trash: [
    "~/Library/Logs/notchcue.log",
    "~/Library/Preferences/ai.lycana.notchcue.plist",
  ]
end
