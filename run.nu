#!/bin/nu
sudo podman run -v /dev:/dev --privileged --name minimal --rm -ti --network=host -v $"(pwd|str trim):/work" --workdir /work docker.io/ssfdust/minimal-build:v1
