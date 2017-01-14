FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apk --no-cache add dbus-x11 gtk+2.0 openssh-client virt-manager

# since openssh-askpass doesn't exist, manually drop in the files from a previous image
COPY gtk-ssh-askpass /usr/lib/ssh/gtk-ssh-askpass
ENV SSH_ASKPASS /usr/lib/ssh/gtk-ssh-askpass

CMD /usr/bin/virt-manager & read
