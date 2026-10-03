cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.8"
  sha256 arm:   "18b30799babc85a74b5aef5b94263d34786003152a0011f9f92ab6535ee7a4d4",
         intel: "29d43c3cc7abf3e1eabf0441996a4ac634ece4b1aa2bdce686412132e5c55309"

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
