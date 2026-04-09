# alma-test-env

Builds an ssh-accessible almalinux environment for testing ansible plays.

## Usage

```bash
./build.sh
podman run --rm -d -p 2222:22 almaenv
```

## Using

```bash
ssh -p 2222 root@localhost
```

SSH login is passwordless, your keys should be copied over during build.
