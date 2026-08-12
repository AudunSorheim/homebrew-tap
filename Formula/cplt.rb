class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.12-081645-3ee02c8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.12-081645-3ee02c8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9ef839218e6d6ed27eb8da5ed6a72a89e6556412510113d266252218859c9f04"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.12-081645-3ee02c8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a30608da2b7cf50d9b5d880f8e35c3c1740e346603c714af41f1f5782a8e9b24"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
