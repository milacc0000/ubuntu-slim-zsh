FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

USER root

RUN \
	apt update -y			&&\
	apt install -y sudo zsh tzdata	&&\
	rm -rf /var/lib/apt/lists/*	&&\
	echo 'ubuntu  ALL=(ALL:ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo
COPY src/init.sh /root/init.sh

ENTRYPOINT ["/usr/bin/zsh"]
