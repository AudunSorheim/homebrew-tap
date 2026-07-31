class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.31-143403-5ce3c3b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.31-143403-5ce3c3b/nav-pilot-darwin-arm64"
      sha256 "319bd4f364d131440d05b60465d3a3e32ce7f056dd7ff381718cfc46e0c986c3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.31-143403-5ce3c3b/nav-pilot-darwin-amd64"
      sha256 "d92ef7db013da6c537950665b7085de9aa4e55a68163ed368daaac9bde278ec7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.31-143403-5ce3c3b/nav-pilot-linux-arm64"
      sha256 "7280c46b6218c6a8725cf5cda17d4cb7571b851b36d3edaa9a11c5b5654843f6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.31-143403-5ce3c3b/nav-pilot-linux-amd64"
      sha256 "5bd70ebf8ce6165121eeaaa96cb0dbc8356e0b956ab9cc41680bf1fd8082bea4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
