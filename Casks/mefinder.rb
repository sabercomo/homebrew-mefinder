cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.3"
  sha256 arm:   "dce0676029256317fedcbaba47f7bc745b29a854c9398ba35e26557885c96c01",
         intel: "a80603b5495399ea39131df22d6d5c7b55c7ad77acd6104dce80db60bb3139e6"

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
