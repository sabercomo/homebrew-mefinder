cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.7"
  sha256 arm:   "1655ccef1b641ab8b33436bd63975e2537757a0e410c4d7621cafaa334c440c9",
         intel: "1e1605b03be794263a29eb23707674395c8961cb151a9c399075581aca5b021c"

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
