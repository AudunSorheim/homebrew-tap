class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.23-185231-f8613ae"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.23-185231-f8613ae/nav-pilot-darwin-arm64"
      sha256 "1b71e1470c1f75341f3996949ce86be4f6d71f81b8432eae092c34b31b5744d1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.23-185231-f8613ae/nav-pilot-darwin-amd64"
      sha256 "977c9a366ae2d870dd78b2cbc837fc0c964d4509c00c56f4a2ad46a30c9f3bf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.23-185231-f8613ae/nav-pilot-linux-arm64"
      sha256 "e0b273c6794bcaa8e54bdee73f381b9c3d36a67cc41bd4b9da7c25881fb6c8c5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.23-185231-f8613ae/nav-pilot-linux-amd64"
      sha256 "4fce0519add45a906eec9e81aa605883eac28e788cb954056c194fb7df7aa726"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
