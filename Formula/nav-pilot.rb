class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.10-101926-2d0911b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.10-101926-2d0911b/nav-pilot-darwin-arm64"
      sha256 "e4cdfeba7a8da33665ae75e64fca07861cc37c0cedab121e9a3b6c20c5c48e04"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.10-101926-2d0911b/nav-pilot-darwin-amd64"
      sha256 "08f592d45321d4a187d4c592c4c737dd461f555e2ca18a83557cb99bce9f373c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.10-101926-2d0911b/nav-pilot-linux-arm64"
      sha256 "a3a4edb1bcf8a891d7100794cc1ef2e904c4474d034b6d24de1f201dfa7d0325"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.10-101926-2d0911b/nav-pilot-linux-amd64"
      sha256 "c6e57295f2dde95a4b858e60721f9bd40e1d9b369e44e0b6c13cc8cc013ffa67"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
