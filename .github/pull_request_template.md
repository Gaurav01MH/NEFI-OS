## What does this change?

<!-- Describe the change in a few sentences. -->

## Why?

<!-- The problem it solves. Link the related issue, e.g. "Closes #12". -->

## How was it tested?

<!-- Mark what applies and add details. -->

- [ ] Built the ISO with `installer/build.sh` and installed it in a virtual machine (hypervisor and version: …)
- [ ] Tested on physical hardware (model: …)
- [ ] Python modules compile: `python3 -m py_compile config/includes.chroot/usr/lib/nefi/modules/*.py`
- [ ] Documentation only, no code changed

## Checklist

- [ ] The change is focused on one thing
- [ ] No version stamps from `packages/*/DEBIAN/control` are included
- [ ] Code that runs as root follows the [privilege model](https://nefi-os.gitbook.io/docs/user-guide/security/architecture-and-privilege-model)
- [ ] The documentation on GitBook needs an update (describe it below if so)
