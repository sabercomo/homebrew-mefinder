cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.5"
  sha256 arm:   "b8f160b301fbb6e926f091ebbf0d0a036677160769d8f9ee7ab177b58c54e8a4",
         intel: "d28bd3b7d3ad83e805becaa851c803b91c2ee3cfcf49e02230d4766238285d9c"

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
