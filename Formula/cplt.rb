class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.17-062831-1008a92"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.17-062831-1008a92/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "fb1fd69f5ff42deb1cf2e510d97a58ff5f7ddf913e1cd4f7533815a16588eeda"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.17-062831-1008a92/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e60687724df8a2fdb6f99654cc80f1a0dccb215263c2d984c222ff99ce56f8ea"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
