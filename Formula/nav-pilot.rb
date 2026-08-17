class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.17-083535-a866964"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-083535-a866964/nav-pilot-darwin-arm64"
      sha256 "f77d45b36b8ea5fe7778d23380824e7b645d33637d9a4653622f994fe69a17d1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-083535-a866964/nav-pilot-darwin-amd64"
      sha256 "adabbb1cbd3dd02bbbf0a74d8ac9a4b84167748cc914c3519ca02b7ee5f29332"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-083535-a866964/nav-pilot-linux-arm64"
      sha256 "ed39138425ad3cb08628f960b85e62c2bcdd8b346aeb98b1e08cf9551c101a98"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-083535-a866964/nav-pilot-linux-amd64"
      sha256 "c32ddb4ca370db46e6a16a5e6a066a0ca953fac08395cdb1395321b3e2e503c2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
