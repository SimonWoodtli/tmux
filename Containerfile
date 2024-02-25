FROM conanio/gcc10 AS builder
USER root

ADD build.sh /root/build.sh

RUN /root/build.sh

FROM scratch
# Copy binary
COPY --from=builder /root/tmux /bin/tmux
