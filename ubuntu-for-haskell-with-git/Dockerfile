FROM ubuntu:22.04
RUN apt-get update && apt-get install -y \
    libgmp10 \
    ca-certificates \
    git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN git config --global user.email "bot@example.com" \
 && git config --global user.name "Bot"
