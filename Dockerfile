FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apk --no-cache add dbus-x11 openssh-client virt-manager && apk --no-cache add openssh-askpass --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted)

CMD /usr/bin/virt-manager & read
