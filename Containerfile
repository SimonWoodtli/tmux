FROM conanio/gcc10 AS builder
USER root

ADD build.sh /tmp/build.sh

RUN /tmp/build.sh

FROM scratch
# Copy binary
COPY --from=builder /home/conan/tmux /bin/tmux
