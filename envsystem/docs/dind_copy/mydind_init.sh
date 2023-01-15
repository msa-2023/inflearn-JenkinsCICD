#!/bin/sh
/usr/local/bin/docker-entrypoint.sh

ssh-keygen -A
/usr/sbin/sshd -D -e "$@"


