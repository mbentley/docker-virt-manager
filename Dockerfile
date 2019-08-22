FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&\
  apk --no-cache add adwaita-icon-theme dbus-x11 dconf gtk+2.0 mesa-gl openssh-client ttf-dejavu virt-manager openssh-askpass@edge

ENV SSH_ASKPASS /usr/lib/ssh/gtk-ssh-askpass

COPY entrypoint.sh /entrypoint.sh
COPY config /root/.ssh/config

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/virt-manager","--no-fork"]
