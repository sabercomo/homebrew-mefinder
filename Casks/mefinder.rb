cask "mefinder" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.4"
  sha256 arm:   "ac9f16f7b757445243328fda47ddc937f7636428b6b48e55e2b6e28f0f4775b0",
         intel: "b8968a1515ca9d78d555fe2fa27388113c7430548ce52c66950999ce855c7608"

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
