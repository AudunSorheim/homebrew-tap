class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.28-231319-60ee4d7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-231319-60ee4d7/nav-pilot-darwin-arm64"
      sha256 "154d75ad1537ffb283c7248521564594207bf519e513099449f9ae80e0e5a772"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-231319-60ee4d7/nav-pilot-darwin-amd64"
      sha256 "7ef9c86da8093014b8766624666795937e70a98b87d9b18c214268ae3b7957a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-231319-60ee4d7/nav-pilot-linux-arm64"
      sha256 "a2e2cfd350b202e35b9cf5ba23164868ffc129d12888f3c1840cde0ddb48e320"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-231319-60ee4d7/nav-pilot-linux-amd64"
      sha256 "b75f888f96f48db87b376872a634c6710076ab030abe33be0fe6668050830e3f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
