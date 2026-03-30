cask "villar" do
  version "0.2.2"

  on_arm do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_aarch64.dmg"
    sha256 "08901b39fe977e14b6e06f25962e4b714045f6912ea2b2c8000d3feebbae6ae4"
  end

  on_intel do
    url "https://github.com/tyler0702/villar/releases/download/v#{version}/villar_#{version}_x64.dmg"
    sha256 "4f17454305e4b28ab1aa51ce2a4dce83516fde71717819ce33aa0e7204645beb"
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
