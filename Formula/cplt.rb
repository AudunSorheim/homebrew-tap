class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.03-122659-4505dfd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.03-122659-4505dfd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "217019c532990ff9b1303661d983eca44e5db2a817006f3758ff63e5d13ce917"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.03-122659-4505dfd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "951237578768500da6a88237c25619617798e12deb7748073fc88bd1687466d4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
