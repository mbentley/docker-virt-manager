#!/bin/sh

# start ssh agent
eval "$(ssh-agent)"

# generate new machine-id because virt-manager wants this to exist
dbus-uuidgen --ensure=/etc/machine-id
ln -s /etc/machine-id /var/lib/dbus/machine-id

# execute command
exec "${@}"
