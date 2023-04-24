#!/bin/sh
set -ouex pipefail

apt update -y && apt install -y libevent-dev libncurses5-dev build-essential bison
git clone http://github.com/tmux/tmux /tmp/tmux
cd /tmp/tmux
sed -i 's| xqlkmjwvtun~|             |' tmux.h
sh autogen.sh && ./configure && make && make install
