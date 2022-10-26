FROM fedora:latest

RUN dnf install -y ansible sudo git rsync iputils telnet curl wget nmap-ncat nmap bind-utils vim openssh-clients openssl iperf tcpdump jq elinks coreutils strace diffutils iproute hdparm fio iperf && \
    dnf clean all

COPY oc kubectl /usr/local/bin

CMD ["sleep", "infinity"]

