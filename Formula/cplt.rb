class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.11-110945-fc61cd9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.11-110945-fc61cd9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ca5c7eef537389b42cc141dea710f570e2190ac0054772c393c0d1177aaedaf0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.11-110945-fc61cd9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "eb2f85f03125b29610f0d01b0acc242c34dd25b5a30d75e626fdc5663460850a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
