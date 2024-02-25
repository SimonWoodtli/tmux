#!/bin/sh
set -uex pipefail
apt-get update -y && apt-get install -y libevent-dev libncurses5-dev build-essential bison
git clone http://github.com/tmux/tmux /tmp/tmux
cd /tmp/tmux
sed -i 's| xqlkmjwvtun~|             |' tmux.h #borderless tmux
sh autogen.sh && ./configure --enable-sixel && make && make install
