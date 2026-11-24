# branding/

Artwork of NEFI OS and the scripts that generate it.

| File | Purpose |
|---|---|
| `make_branding.py` | Generates the desktop graphics (icons, logos, wallpapers) into `config/includes.chroot/` from the original logos |
| `installer/logo.png` | NEFI OS logo |
| `installer/sfondo-installer.jpg` | Source image for the installer graphics |
| `installer/make-installer-assets.py` | Generates the installer backgrounds and splash into `installer/generated/` |
| `installer/make-banner.py` | Generates the banner shown at the top of the installer screens |
| `installer/generated/` | Generated installer images |

The installer scripts are run automatically by `installer/nefi-rebrand-iso.sh` during the build.

`make_branding.py` is run by hand. It looks for the original logos (`nefipng.png` and `logo_bianco.png`) in `~/Downloads`, or in the folder set with `NEFI_SRC`, and writes to `~/nefi-os/config/includes.chroot`, or to the folder set with `NEFI_OUT`.
