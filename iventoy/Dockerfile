# syntax=docker/dockerfile:1.3

### Stage 1: builder
FROM debian:trixie-slim as builder
ARG IVENTOY_VERSION=1.0.21

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl ca-certificates jq tar && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /build && cd /build && \
    ASSET_ID=$(curl -s \
      https://api.github.com/repos/ventoy/PXE/releases/tags/v${IVENTOY_VERSION} \
      | jq -r '.assets[] | select(.name | test("linux.*tar.gz")) | .id' | head -n1) && \
    curl -L \
      -H "Accept: application/octet-stream" \
      -o iventoy.tar.gz \
      "https://api.github.com/repos/ventoy/PXE/releases/assets/${ASSET_ID}" && \
    tar xzf iventoy.tar.gz && \
    mv iventoy-${IVENTOY_VERSION} /iventoy

### Stage 2: runtime
FROM debian:trixie-slim
LABEL maintainer="ghost@ghosthacker.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        supervisor iproute2 iputils-ping net-tools curl \
        libc6 libstdc++6 libuuid1 libssl3 zlib1g && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /iventoy/data /iventoy/log /iventoy/iso /iventoy/user

COPY --from=builder /iventoy /iventoy
COPY files/supervisor/iventoy.conf /etc/supervisor/conf.d/iventoy.conf

EXPOSE 69/udp 26000/tcp 16000/tcp 10809/tcp
VOLUME [ "/iventoy/iso", "/iventoy/user" ]

HEALTHCHECK --interval=30s --timeout=5s --start-period=15s --retries=3 \
  CMD curl -fs http://127.0.0.1:26000/ || exit 1

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
