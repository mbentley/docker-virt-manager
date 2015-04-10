FROM debian:wheezy
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apt-get update && apt-get install -y virt-manager ssh ssh-askpass)
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
