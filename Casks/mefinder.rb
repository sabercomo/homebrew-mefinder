cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.4"
  sha256 arm:   "2a8574b451e516237f5e527797baa450fc39c0de5a6d183287768700778bbd3e",
         intel: "c9518c3bae25fdf70458b25d5547f1bd74edf1b16b9fb502f3e319b9d4983b13"

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
