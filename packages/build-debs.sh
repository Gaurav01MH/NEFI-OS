#!/bin/bash
# NEFI OS - builds all packages in packages/ into packages/out/
# First, run the generators (*-gen.sh) in alphabetical order.
# Each build gets a new version (e.g. 0.2+202609301530), so the ISO mirror
# and apt updates always get the latest version.
set -euo pipefail
cd "$(dirname "$0")"
STAMP="$(date +%Y%m%d%H%M)"
mkdir -p out
for gen in *-gen.sh; do [ -f "$gen" ] && ./"$gen"; done
for dir in */; do
  pkg="${dir%/}"
  [ -f "$pkg/DEBIAN/control" ] || continue
  chmod -R go-w "$pkg"   # No NEFI files can be modified by regular users.
  rm -f out/"${pkg}"_*.deb
  sed -i -E "s/^Version: ([^+]*).*/Version: \1+$STAMP/" "$pkg/DEBIAN/control"
  size="$(du -sk --exclude=DEBIAN "$pkg" | cut -f1)"
  sed -i '/^Installed-Size:/d' "$pkg/DEBIAN/control"
  sed -i "/^Architecture:/a Installed-Size: $size" "$pkg/DEBIAN/control"
  # Large packages (Ollama) are compressed with gzip: it is much faster.
  Z=""; [ "$size" -gt 300000 ] && Z="-Zgzip"
  dpkg-deb --root-owner-group $Z --build "$pkg" out/ > /dev/null
  echo "[NEFI] package: $(ls out/"${pkg}"_*.deb)"
done
