rm ./authorized_keys
cat ~/.ssh/id_ed25519.pub >> authorized_keys

podman build . -t almaenv
