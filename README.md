mbentley/virt-manager
==================

Base docker image for Debian Wheezy

To pull this image:
`docker pull mbentley/virt-manager`

On OS X, you need to run XQuartz and use `socat` to make the X11 display available on the network: `socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"`

Running fsv on OS X: `docker run -it -e DISPLAY=<ip-of-your-box>:0 mbentley/virt-manager`

Running fsv in X11: `docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY mbentley/virt-manager`
