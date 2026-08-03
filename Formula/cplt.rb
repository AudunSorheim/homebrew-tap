class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.03-083228-4dd2e6d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.03-083228-4dd2e6d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "de0e53325fc7bbd9faf826c7540b23ddf8effecd9b7e8f6245137ac271a9733e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.03-083228-4dd2e6d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "caabb7ef182c19a5a022e13799995f11265cc1715ebb9c7cc62875a2039c39cf"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
