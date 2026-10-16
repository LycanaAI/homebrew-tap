cask "notchcue" do
  version "0.2.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
