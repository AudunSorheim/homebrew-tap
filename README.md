# homebrew-tap

Homebrew tap for [navikt](https://github.com/navikt) CLI tools.

## Usage

Install cplt:

```sh
brew tap navikt/tap
brew install navikt/tap/cplt
```

Install nav-pilot:

```sh
brew tap navikt/tap
brew install navikt/tap/nav-pilot
```

Install Grillmester's cplt-based terminal launcher for GitHub Copilot CLI and
OpenCode:

```sh
brew tap navikt/tap
brew install navikt/tap/cplt navikt/tap/grillmester
```

Homebrew 6 trusts third-party formulae individually, so both formula names are
fully qualified for the first installation. The Grillmester formula installs
its agent content and terminal launcher; cplt is a dependency, while Copilot
CLI and OpenCode remain user-managed.

## Formulae

| Formula       | Description                                                           |
| ------------- | --------------------------------------------------------------------- |
| `cplt`        | macOS Seatbelt sandbox wrapper for GitHub Copilot CLI                  |
| `nav-pilot`   | Nav's institutional AI developer toolkit for GitHub Copilot            |
| `grillmester` | cplt-based Grillmester launcher for GitHub Copilot CLI and OpenCode    |

Formulae are automatically updated on each [cplt](https://github.com/navikt/cplt/releases) and [nav-pilot](https://github.com/navikt/copilot/releases) release.
Grillmester is updated from stable [Grillmester](https://github.com/navikt/grillmester/releases) releases.
