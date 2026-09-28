cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.7"
  sha256 arm:   "61061624cee5c9d69977e5c18295b894ce1335f1fce8db0b3f130baf48ada211",
         intel: "cfbe7238b091c36702ed504fa55588ea6210da15142c95e5366e8065fc777277"

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
