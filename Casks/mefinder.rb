cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.1"
  sha256 arm:   "c2a31f55ae59dd0896f4a18a6d9883426817caa8b10c3e440eccd0976538c6d9",
         intel: "9ff2033d02cf6996d034d667e50fb8e1458dd2a3e48f440062c7a152f6b01087"

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
