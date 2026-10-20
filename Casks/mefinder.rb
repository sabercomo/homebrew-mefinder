cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.9"
  sha256 arm:   "6273e47f96917177acc013aec6417c67958f7e5482f45d6b6ec74d6db2111d02",
         intel: "ec35a731f97f84e1c6e0023f41e21e2458d6c8583e3b243f41ac093ebc836a53"

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
