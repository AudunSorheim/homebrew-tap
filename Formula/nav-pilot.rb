class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.06-131157-11ad3c7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.06-131157-11ad3c7/nav-pilot-darwin-arm64"
      sha256 "9a4a732fb0d47e3014bdbf42985da5247c80ade0cd57f74aee920ea8bf2d145e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.06-131157-11ad3c7/nav-pilot-darwin-amd64"
      sha256 "9750a2b29c6b428a68c4bba536c628522bcb2101e86398aa18e8c72cdc244b39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.06-131157-11ad3c7/nav-pilot-linux-arm64"
      sha256 "4c8f884c68bf3283dad944fb273bb20ed30f5463113bac912f79273af124479d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.06-131157-11ad3c7/nav-pilot-linux-amd64"
      sha256 "2597fb233230db171a78881c86f042d3b58eaa1b3e7c871d087777d150890897"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
