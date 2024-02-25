# Latest tmux with sixel support

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/tmux)](https://artifacthub.io/packages/search?repo=tmux)

This image contains the latest standalone tmux binary with sixels support enabled.

## Features

* Sixel support
* Static standalone binary
* Latest version
* Hosted on ghcr.io

## Installation

* For CI/Image install: `COPY --from=ghcr.io/simonwoodtli/tmux:latest /bin/tmux /where/You/Want`
* For local install:
1. Build image:

```
docker build -t alpine-tmux -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/tmux:latest /bin/tmux /bin/tmux
EOF
```

2. Copy tmux to host:

```
docker run --rm -v $HOME/.local/bin:/mnt alpine-tmux sh -c "install /bin/tmux /mnt"
```

Related:

* <https://github.com/tmux/tmux/wiki/Installing>
