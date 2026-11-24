# keys/

OpenPGP public keys used to sign NEFI OS releases. Each release signs the `SHA256SUMS` file, which contains the checksum of the ISO.

| Releases | Key file | Fingerprint | Valid until |
|---|---|---|---|
| **0.3 and later** | `NEFI-OS-RELEASE-KEY.asc` | `0CC0 887C BCC8 ED05 E308  FBBA ECF8 8C1D 9133 66D3` | 2028-11-03 |
| 0.2 | `NEFI-OS-RELEASE-KEY-0.2.asc` | `C551 EF07 CF10 BB11 0518  B0D4 D61F 20E2 7D01 0936` | 2028-10-07 |

The current key is also attached to every release on the [Releases page](https://github.com/nefios/NEFI-OS/releases).

The 0.2 key is **not compromised**. It is no longer used for new releases and is kept only to verify the 0.2 release.

Check a key's fingerprint before trusting it:

```bash
gpg --show-keys --with-fingerprint NEFI-OS-RELEASE-KEY.asc
```

Full verification steps: [Download and verify](https://nefi-os.gitbook.io/docs/start/getting-started/download-and-verify) · [Signing keys](https://nefi-os.gitbook.io/docs/project/releases/signing-keys)
