cask "opencomic" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"

  on_arm do
    sha256 "4f8dc4b405990d5d0447ed87379c2a13d70144f48c78ee700f5316e8cd5a429e"

    url "https://github.com/ollm/OpenComic/releases/download/v#{version}/OpenComic-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "98d0b314162c398f6f99dd2e0c6cdeb01e6940db830d7ea610a998818ecc2bd4"

    url "https://github.com/ollm/OpenComic/releases/download/v#{version}/OpenComic-#{version}.dmg"
  end

  name "OpenComic"
  desc "Comic and Manga reader"
  homepage "https://github.com/ollm/OpenComic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "opencomic.app"

  zap trash: "~/Library/Application Support/OpenComic"
end
