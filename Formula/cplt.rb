class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.28-223226-1061607"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.28-223226-1061607/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "af2f68962293536319a4413f228af1741a8cf47aa738da3e05a38053b2a58ea1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.28-223226-1061607/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fe310ac4e2192f29589ccb19eb12d168d72df38ef5d9b16db3f242544a4029df"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
