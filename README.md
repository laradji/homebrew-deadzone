# homebrew-deadzone

Homebrew tap for [`deadzone`](https://github.com/laradji/deadzone) — a self-hosted MCP server for semantic documentation search.

## Install

```bash
brew tap laradji/deadzone
brew install deadzone
```

## Upgrade

```bash
brew update
brew upgrade deadzone
```

## Uninstall

```bash
brew uninstall deadzone
brew untap laradji/deadzone
```

## What you get

A single `deadzone` binary (`$(brew --prefix)/bin/deadzone`) that dispatches to `server`, `scrape`, `consolidate`, `packs`, and `dbrelease` subcommands. See the [main repo README](https://github.com/laradji/deadzone#readme) for usage.

## First-launch network fetch

On first run, `deadzone` downloads `libonnxruntime` (~33 MB, SHA256-verified) into `$HOME/Library/Caches/deadzone/ort/`. This is a one-time cost; subsequent runs reuse the cache. Set `DEADZONE_ORT_LIB_PATH` to bypass the download and point at a hand-positioned library (air-gapped installs).

## Supported platforms

| Platform | Status |
|---|---|
| macOS arm64 (Apple Silicon) | supported |
| macOS amd64 (Intel) | not shipped — the upstream release matrix only builds darwin-arm64 |

If you need Intel Mac support, file an issue on the [main repo](https://github.com/laradji/deadzone/issues).

## Formula

The tap contains exactly one formula: [`Formula/deadzone.rb`](Formula/deadzone.rb). Version and SHA256 bump with each upstream release. For now bumps are manual — the main repo's release workflow may automate this later.

## License

Apache-2.0, matching the upstream project.
