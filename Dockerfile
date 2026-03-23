FROM ubuntu:22.04

LABEL maintainer="andreyhgl"
LABEL description="Minimal container with Perl, Git, and C/C++ build tools"
LABEL org.opencontainers.image.source="https://github.com/KarlssonLaboratory/perl-git-c-toolkit"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  gcc \
  g++ \
  make \
  perl \
  zlib1g-dev \
  bzip2 \
  git \
  ca-certificates \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD ["/bin/bash"]
