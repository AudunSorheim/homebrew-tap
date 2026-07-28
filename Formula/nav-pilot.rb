class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.28-223514-08f8869"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-223514-08f8869/nav-pilot-darwin-arm64"
      sha256 "cb1a158d6fb7f8119a994258e270f85b5dcf379b5032bc5a1e69f26e37ab092c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-223514-08f8869/nav-pilot-darwin-amd64"
      sha256 "81fdb99b89ecc547c0ecca31c8f15878c07d3428eed8c809f96933aa3eed35af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-223514-08f8869/nav-pilot-linux-arm64"
      sha256 "57d177fbc6a02f23d00f9b237f299850509aa8accb3aa2fa122ec239ca81c6a6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.28-223514-08f8869/nav-pilot-linux-amd64"
      sha256 "08328526afc79416ad7ef7f8b7e3e45a8664a95c92534c7078ad0b49a1d054de"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
