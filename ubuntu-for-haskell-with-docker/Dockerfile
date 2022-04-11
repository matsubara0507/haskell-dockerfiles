FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    libgmp10 \
    ca-certificates \
    git \
    curl \
    gnupg \
    lsb-release \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN git config --global user.email "bot@example.com" \
 && git config --global user.name "Bot"
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
