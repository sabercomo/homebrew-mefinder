cask "mefinder" do
  version "0.6.2"
  sha256 "7dd7e868f4e2c8073fe46fdf3e32908698e935f748474cb059d53cfb3ea2ec20"

  url "https://github.com/sabercomo/MEFinder/releases/download/v#{version}/MEFinder-v#{version}-macos-arm64.dmg"
  name "MEFinder"
  desc "Local-first literature passage locator for PDF, DOCX and EPUB"
  homepage "https://github.com/sabercomo/MEFinder"

  livecheck do
    url "https://github.com/sabercomo/MEFinder/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "MEFinder.app"
end
