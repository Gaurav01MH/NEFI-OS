# installer/

Builds the NEFI OS installer ISO: the official Debian 13 installer remastered with `simple-cdd`.

| File | Purpose |
|---|---|
| `build.sh` | **The build command.** Builds the NEFI packages, remasters the Debian DVD and applies the NEFI graphics |
| `nefi.conf` | `simple-cdd` configuration (profile, Debian mirrors) |
| `profiles/nefi.preseed` | Installer answers preset by NEFI (hostname, partitioning, root account, package sources, GRUB…) |
| `profiles/nefi.packages` | Packages installed by default |
| `profiles/nefi.downloads` | Extra packages copied onto the ISO for offline installation |
| `profiles/nefi.postinst` | Commands run at the end of the installation |
| `profiles/nefi.description` | Profile description |
| `nefi-rebrand-iso.sh` | Applies the NEFI graphics and labels to the ISO (boot behavior is unchanged) |

## Usage

```bash
./build.sh                    # version 0.3 by default
NEFI_VERSION=0.3 ./build.sh   # explicit version
```

Before the first build, put the Debian DVD image `debian-13-amd64-DVD-1.iso` in `installer/images/`. The ISO is written to `installer/images/nefi-os-<version>-amd64.iso`.

`images/` and `tmp/` are created by the build and are not stored in Git.

Full guide: [Build from source](https://nefi-os.gitbook.io/docs/project/development/build-from-source).
