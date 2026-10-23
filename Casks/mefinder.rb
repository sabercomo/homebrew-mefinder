cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "9a505a443c23304720f6da96587b4f8836a11cabafb8808147568b47ca6d073d",
         intel: "b168c654ce28a1d1bbdb2796261bf59a9aec14f7f86ef99a38a9af34cffe43bc"

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
