cask "villar" do
  version "0.4.10"

  on_arm do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_aarch64.dmg"
    sha256 "77e9a52e2d658b682dfc062f49fc9d6b826d0339bdcea142eb19c16ef88aa2f0"
  end

  on_intel do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_x64.dmg"
    sha256 "34fb22cd8d438bbc4b8a59cce9d2a1803d28a32e4b7c3f0ff40410f5a17abe21"
  end

  name "villar"
  desc "A beautiful Markdown reader for AI-generated documents"
  homepage "https://tyler0702.github.io/villar/"

  app "villar.app"

  zap trash: [
    "~/Library/Application Support/com.tylerpc.villar",
    "~/Library/Caches/com.tylerpc.villar",
    "~/Library/Preferences/com.tylerpc.villar.plist",
    "~/Library/Saved Application State/com.tylerpc.villar.savedState",
  ]
end
