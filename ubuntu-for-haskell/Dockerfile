FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    libgmp10 \
    ca-certificates \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
