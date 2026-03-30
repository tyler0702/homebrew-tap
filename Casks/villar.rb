cask "villar" do
  version "0.3.1"

  on_arm do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_aarch64.dmg"
    sha256 "496da3c47a990fee98d2baf1a177eb36891d08232f785c92c84376c32dbdbf3b"
  end

  on_intel do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_x64.dmg"
    sha256 "3728edfdd20b5434691ad8cd9d0d1293f1ddaa27b1cfd07fd4ec805beea236d0"
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
