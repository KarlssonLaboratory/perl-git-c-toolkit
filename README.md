[![Build and Push Docker Image](https://github.com/KarlssonLaboratory/perl-git-c-toolkit/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/KarlssonLaboratory/perl-git-c-toolkit/actions/workflows/docker-publish.yml)

A minimal Ubuntu 22.04 container with Perl, Git, and C/C++ build tools.

Every push to `main` automatically builds and pushes the image to GitHub Container Registry. Tagged releases (e.g. `v1.0.0`) produce versioned image tags.

> Mainly used to compile [BS-snper](https://github.com/hellbelly/BS-Snper) inside nextflow pipelines

## Included softwares

`gcc`, `g++`, `make`, `perl`, `zlib1g-dev`, `git`, `ca-certificates` (SSL certificates to talk to github)

## Pull from GitHub Container Registry

```bash
docker pull ghcr.io/KarlssonLaboratory/perl-git-c-toolkit:main
```

## Run interactively

```bash
docker run -it --rm -v $(pwd):/data ghcr.io/KarlssonLaboratory/perl-git-c-toolkit:main
```

## Build locally

```bash
git clone https://github.com/KarlssonLaboratory/perl-git-c-toolkit.git
cd perl-git-c-toolkit
docker build -t perl-git-c-toolkit .
```