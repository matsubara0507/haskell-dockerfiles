FROM ubuntu:22.04
RUN apt-get update \
 && apt-get install -y curl gcc g++ git gnupg libc6-dev libffi-dev libgmp-dev libtinfo-dev make netbase xz-utils zlib1g-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
ENV LANG="C.UTF-8" \
    LC_ALL="C.UTF-8" \
    STACK_VERSION="2.11.1"
RUN curl -sSL https://get.haskellstack.org/ | sh \
 && stack upgrade --binary-version=${STACK_VERSION}
