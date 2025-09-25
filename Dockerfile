FROM ubuntu:latest
RUN apt-get update && \
  apt-get install -y ca-certificates \
  openssh-client \
  sshpass
  # bash

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
