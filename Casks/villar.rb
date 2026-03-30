cask "villar" do
  version "0.3.2"

  on_arm do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_aarch64.dmg"
    sha256 "9adb4d8e9766fca044ca58bf9e90235f9e01f7e3df146ab37793b9691178c9ac"
  end

  on_intel do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_x64.dmg"
    sha256 "511cf06e9a7b0c94209729000199e588aff8b8e15f07c7722b868ca9f6b2ef60"
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
