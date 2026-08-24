class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.24-134023-dc66d1e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-134023-dc66d1e/nav-pilot-darwin-arm64"
      sha256 "6e2bfc712aaa59a2b42f596683981ea9ae4ad09fdaca75a155a89ead766ac02a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-134023-dc66d1e/nav-pilot-darwin-amd64"
      sha256 "ddd7b845a13c66d45f69dd182b6d6b637fa9397d191e854805c282bc1bc96b25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-134023-dc66d1e/nav-pilot-linux-arm64"
      sha256 "d35714756edeb4ee67f55c79531513a2e9d9e9426697120fbb08369a59fed7ed"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-134023-dc66d1e/nav-pilot-linux-amd64"
      sha256 "99987f338db9d5de31d2018fa5d237983352b92dd6c91a7158dc0f4a3ef97e27"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
