class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.10-102500-c4d9cbd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.10-102500-c4d9cbd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0a5f6a30db4bb0f5aedf6af2f73d863eb4c6936e12dd9d96a0d2c039540d8eb4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.10-102500-c4d9cbd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1836200f051e02348645520b05d7931042b84e1058ba8dcf868a5afd76001ace"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
