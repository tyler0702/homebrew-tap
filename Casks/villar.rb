cask "villar" do
  version "0.4.2"

  on_arm do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_aarch64.dmg"
    sha256 "c816b16db141cd92eb82bcbb05bb015e179ff6cdf2da92a5e9d4aae6f79ff593"
  end

  on_intel do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_x64.dmg"
    sha256 "1aa34444acd09c6828162bff35d1719d1c57f8e0d6a097190452b2ec0a6e7e7c"
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
