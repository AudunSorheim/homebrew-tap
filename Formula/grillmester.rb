class Grillmester < Formula
  desc "Agent team for software delivery, design, and product work in Nav"
  homepage "https://github.com/navikt/grillmester"
  url "https://github.com/navikt/grillmester/releases/download/v0.3.0/grillmester-terminal-v0.3.0.tar.gz"
  sha256 "bf77cc878cacbbfda8e477a7ee5d624734e6b584271425580a623e833ef1e187"
  license "MIT"

  depends_on :macos
  depends_on "navikt/tap/cplt"
  depends_on "python@3.13"
  depends_on "ripgrep"

  def install
    libexec.install Dir["*"]
    cplt = formula_opt_bin("cplt")
    python = formula_opt_bin("python@3.13")/"python3.13"
    (bin/"grillmester").write <<~SH
      #!/bin/sh
      export PATH="#{cplt}:$PATH"
      exec "#{python}" -I -S "#{libexec}/scripts/grillmester.py" "$@"
    SH
  end

  def caveats
    <<~EOS
      Run `grillmester` to choose GitHub Copilot CLI or OpenCode and one of the
      four public Grillmester agents. Both terminal clients run through cplt.

      Grillmester uses OpenCode and GitHub Copilot CLI from your PATH. Install
      and update the client or clients you want to use:
        brew install opencode
        brew install --cask copilot-cli

      cplt is installed as a required Homebrew dependency. The Homebrew launcher
      never installs, replaces, or shadows your OpenCode or GitHub Copilot CLI.

      Copilot app uses its own Plugins UI and is not started through Homebrew.
    EOS
  end

  test do
    assert_match "grillmester #{version}", shell_output("#{bin}/grillmester --version")
    assert_match "Launch Grillmester", shell_output("#{bin}/grillmester --help")
  end
end
