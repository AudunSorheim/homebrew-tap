class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.24-215218-154e33d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-215218-154e33d/nav-pilot-darwin-arm64"
      sha256 "ec8bfa035b6a8e41a260aa60b36b6adaa330a2ae89adfc04b2f746b748e68df7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-215218-154e33d/nav-pilot-darwin-amd64"
      sha256 "a15e5c146f457e25be1a1bd0bda1d16fa91876c5151ac05e832829bf09fb2063"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-215218-154e33d/nav-pilot-linux-arm64"
      sha256 "6a862e33a4f83a82188969ed649c6c46bbc4d44899452e0281dc4ea8095ac02b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-215218-154e33d/nav-pilot-linux-amd64"
      sha256 "4263629243dafbbe7dad3dd033fc9307a7bdc03e9a8e050b163763364d5ec048"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
