FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apk --update add virt-manager openssh-client && apk --update add openssh-askpass --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted && rm -rf /var/cache/apk/*)

ENTRYPOINT /usr/bin/virt-manager & read
