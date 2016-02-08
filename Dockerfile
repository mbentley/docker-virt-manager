FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apk --update add dbus-x11 openssh-client virt-manager && apk --update add openssh-askpass --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted && rm -rf /var/cache/apk/*)

CMD /usr/bin/virt-manager & read
