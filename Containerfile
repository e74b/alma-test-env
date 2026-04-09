FROM almalinux
RUN dnf install epel-release -y
RUN dnf install openssh-server htop -y
RUN ssh-keygen -A
COPY ./authorized_keys /root/.ssh/authorized_keys
CMD ["/sbin/sshd", "-D"]
