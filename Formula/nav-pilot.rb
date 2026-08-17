class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.17-062843-9a98cc4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-062843-9a98cc4/nav-pilot-darwin-arm64"
      sha256 "20986a0240272c8ad87eea661d07b0f30e878bc2d1d42333f517dbd1c5c12c03"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-062843-9a98cc4/nav-pilot-darwin-amd64"
      sha256 "24d892db4abbe6dad88da9027a78b6ae2ccbee8628a942cb22250929a101c008"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-062843-9a98cc4/nav-pilot-linux-arm64"
      sha256 "75243e5b7a7ccb9b2245539da51b097ed16f522be2c0124dfa9902413421d9f5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.17-062843-9a98cc4/nav-pilot-linux-amd64"
      sha256 "5c9c415bb9cb659bce814684d5dc577bb6f471d60bbc9ad6b7259fa2954e399d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
