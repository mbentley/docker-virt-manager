FROM gliderlabs/alpine:3.3
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apk --update add virt-manager openssh-client && apk --update add openssh-askpass --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted)
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
