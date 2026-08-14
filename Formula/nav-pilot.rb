class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.14-191753-d6f24d4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.14-191753-d6f24d4/nav-pilot-darwin-arm64"
      sha256 "55b99cdac985bf5c7f6d6d8a39e84d97b0cd66b56e0e96009d66c04909a6f93a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.14-191753-d6f24d4/nav-pilot-darwin-amd64"
      sha256 "5e504c63170430a94963812af7c39d7c41727342b30fc07caf7ac82e297e6ee5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.14-191753-d6f24d4/nav-pilot-linux-arm64"
      sha256 "f34317bcd5d94b2a4fdc8c9bccea49852701cff85098ac1d768d2dbc1b881a8a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.14-191753-d6f24d4/nav-pilot-linux-amd64"
      sha256 "7ad4fb6ab6af2dc7af81d760183503571e64935f9504a92299962301421ff627"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
