FROM ubuntu:22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    iproute2 \
    wireguard-tools \
    iptables \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
