class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.03-140322-4c056bc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.03-140322-4c056bc/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ece826864f97cc5d17430edcc37cf065f6bf9fc82bfd7a4c00c045fd6e4ad1f1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.03-140322-4c056bc/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7c4bfadf5957be3735e0f233e5e57a976c96f2f884f554015081cb7d0525c94b"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
