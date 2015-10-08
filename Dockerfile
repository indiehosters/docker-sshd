FROM debian:jessie

RUN apt-get update && apt-get install -y \
      openssh-server \
 && mkdir /var/run/sshd \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
