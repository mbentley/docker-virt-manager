FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apk --no-cache add dbus-x11 openssh-client virt-manager
#RUN (apk --no-cache add dbus-x11 openssh-client virt-manager &&\
#  apk --no-cache add openssh-askpass --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted)

# since openssh-askpass doesn't exist, manually drop in the files from a previous image
COPY openssh-askpass.sh /etc/profile.d/openssh-askpass.sh
COPY gtk-ssh-askpass /usr/lib/ssh/gtk-ssh-askpass

CMD /usr/bin/virt-manager & read
