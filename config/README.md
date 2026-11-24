# config/

The source of everything NEFI installs on the system.

## Used by the current build

| Folder | Content |
|---|---|
| `includes.chroot/` | Files installed on the system, at the same paths: `includes.chroot/opt/nefi/` becomes `/opt/nefi/`. Contains the Security Center (`usr/lib/nefi/modules/`), the root helpers (`opt/nefi/`), launchers, systemd units and configuration |
| `hooks/normal/0010-…` to `0040-…` | The five setup scripts run once at installation: hardening, tool configuration, Ollama, NEFI setup, branding |

These are packaged into `.deb` files by `packages/nefi-pkgs-gen.sh`.

## Left over from NEFI OS 0.1 (live-build)

Version 0.1 was built with `live-build`. These files are **not used by the current installer build** and are kept for reference:

- `binary`, `bootstrap`, `chroot`, `common`, `source` (live-build settings)
- `bootloaders/`, `package-lists/`, `hooks/live/`
- the hooks in `hooks/normal/` numbered `1000` and above (standard live-build hooks)

> **Do not delete them yet.** `packages/nefi-pkgs-gen.sh` still reads the `chroot/` folder produced by an old live-build run, to find files that belong to Debian packages. Removing live-build would remove the only way to regenerate it. This dependency must be replaced first.

See [Repository layout](https://nefi-os.gitbook.io/docs/project/development/repository-layout).
