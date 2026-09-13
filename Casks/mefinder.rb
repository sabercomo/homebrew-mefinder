cask "mefinder" do
  version "0.5.4"
  sha256 "bf371e27d3d35f8cc9e95c0b1142b9b74fca722c8fb860cb7d8e2940ed57c3f4"

  url "https://github.com/sabercomo/MEFinder/releases/download/v#{version}/MEFinder-v#{version}-macos-arm64.dmg"
  name "MEFinder"
  desc "Local-first literature passage locator for PDF, DOCX and EPUB"
  homepage "https://github.com/sabercomo/MEFinder"

  livecheck do
    url "https://github.com/sabercomo/MEFinder/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "MEFinder.app"
end
