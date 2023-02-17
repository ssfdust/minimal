#!/bin/nu

let container = (buildah from ubuntu:22.04)
buildah run --network=host $container -- sh -c "apt update && apt install -y wget make gawk gcc bc bison flex xorriso libelf-dev libssl-dev xz-utils rsync bzip2 python3 file dosfstools"
buildah commit $container docker.io/ssfdust/minimal-build:v1
buildah rm $container
