mbentley/virt-manager
=====================

docker image for virt-manager
based off of alpine:latest

To pull this image:
`docker pull mbentley/virt-manager`

On macOS, you need to run XQuartz and use `socat` to make the X11 display available on the network:

```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

*Note*: You can *not* allocate a tty (using `-t` in the `docker run...` command) or it will ask for credentials via the tty attached to the container instead of the GUI.

Running on macOS:

```
docker run \
  -e DISPLAY=<ip-of-your-box>:0 \
  -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  mbentley/virt-manager`
```

Running in X11:

```
docker run \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  mbentley/virt-manager`
```

If you would like to keep persistent connection information, add another volume:

```
-v /path/to/saved/config:/root/.config/dconf
```
