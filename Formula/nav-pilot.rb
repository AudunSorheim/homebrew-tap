class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.26-074941-46bcf6b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.26-074941-46bcf6b/nav-pilot-darwin-arm64"
      sha256 "4fd7fda51ee39f0ffc975cb7ff18c5808c16a57df59e48bcf890831c4966c909"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.26-074941-46bcf6b/nav-pilot-darwin-amd64"
      sha256 "f26ab4802bc2abf6f0605d25f0876005b945a2650cf4edca7a1d9d94b2efcf34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.26-074941-46bcf6b/nav-pilot-linux-arm64"
      sha256 "7a352f231f6d937bc7aa14b0266db98bce9d088c06d511108b077f03e7e64f3e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.26-074941-46bcf6b/nav-pilot-linux-amd64"
      sha256 "7bec4a8365b1ac5f9c59a52d5632509333c02a0fd40934d979d2add5b5494a9b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
