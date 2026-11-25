cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.6"
  sha256 arm:   "7616f306908b631cc117d327f43e7335db1504ad0a1d36888c4ce22bda716c69",
         intel: "13b90cbe131cdfc0e8e6924fc3e18198ae02fc4acceebb3b320a6ef30dd66b0f"

  url "https://github.com/sabercomo/MEFinder/releases/download/v#{version}/MEFinder-v#{version}-macos-#{arch}.dmg"
  name "MEFinder"
  desc "Local-first literature passage locator for PDF, DOCX and EPUB"
  homepage "https://github.com/sabercomo/MEFinder"

  livecheck do
    url "https://github.com/sabercomo/MEFinder/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MEFinder.app"
end
