cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.5"
  sha256 arm:   "7d8535c88c94dc50529acf631b3117148b8ee96a441f07548dddc088a280e407",
         intel: "1c124a56eb5d227c0472116b04620cfb953b23ed223af9807f45736ce36d6623"

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
