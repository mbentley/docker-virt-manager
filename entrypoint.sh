#!/bin/sh

# start ssh agent
eval "$(ssh-agent)"

# execute command
exec "${@}"
