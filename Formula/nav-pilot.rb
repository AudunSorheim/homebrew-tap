class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.24-183014-b92737e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-183014-b92737e/nav-pilot-darwin-arm64"
      sha256 "44b3824ef3e0d71b8b182d552641ba8eacdc947dfb6bed6774279bad4f87812c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-183014-b92737e/nav-pilot-darwin-amd64"
      sha256 "70becfadf2970835bcf574cf16881a23ca2bfa8f2b97ec2354b0f0e9bc510e2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-183014-b92737e/nav-pilot-linux-arm64"
      sha256 "66658ce7cb65f1ad7cc153aea27dc6186cb0224133c052ff86ffa018ed9a2a92"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.24-183014-b92737e/nav-pilot-linux-amd64"
      sha256 "652667ae787b5d531fd49e16857b313081b577e8eba97df350281440437d41fe"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
