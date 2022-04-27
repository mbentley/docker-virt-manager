# rebased/repackaged base image that only updates existing packages
FROM mbentley/alpine:latest
LABEL maintainer="Matt Bentley <mbentley@mbentley.net>"

RUN apk --no-cache add adwaita-icon-theme dbus-x11 dconf gtk+2.0 mesa-gl openssh-client seahorse ttf-dejavu virt-manager

ENV SSH_ASKPASS /usr/libexec/seahorse/ssh-askpass

COPY entrypoint.sh /entrypoint.sh
COPY config /root/.ssh/config

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/virt-manager","--no-fork"]
