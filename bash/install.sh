#!/usr/bin/env bash

if [ $UID != 0 ]; then
	echo "ERROR: run me as root"
	exit 1
fi

install -o root -g wheel -m 664 bash.colvin /etc/bash.colvin

# Install the root user's files
install -o root -g root -m 644 bashrc /root/.bashrc
install -o root -g root -m 644 bash_profile /root/.bash_profile

# Install the colvin user's files
install -o colvin -g colvin -m 644 bashrc /home/colvin/.bashrc
install -o colvin -g colvin -m 644 bash_profile /home/colvin/.bash_profile
