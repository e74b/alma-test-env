FROM docker.io/almalinux/10-init
RUN dnf install epel-release -y
RUN dnf install openssh-server htop -y
RUN ssh-keygen -A
# All containers share same ssh identity
# Used anyways as it is convenient
COPY ./authorized_keys /root/.ssh/authorized_keys
