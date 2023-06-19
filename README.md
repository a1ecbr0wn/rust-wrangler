# rust-wrangler Dockerfile

[![Docker Image CI](https://github.com/a1ecbr0wn/rust-wrangler/actions/workflows/build.yml/badge.svg)](https://github.com/a1ecbr0wn/rust-wrangler/actions/workflows/build.yml)

Dockerfile combination of [rust:latest](https://github.com/rust-lang/docker-rust) and node.

Published to Dockerhub as [alecbrown/rust-wrangler](https://hub.docker.com/repository/docker/alecbrown/rust-wrangler).

To run this Docker directly, run:

``` bash
docker run -it alecbrown/rust-wrangler
```

To use this image in a devcontainer you should be able to use the following `devcontainer.json` file:

```json
{
    "name": "Rust-Wrangler",
    "image": "alecbrown/rust-wrangler",
    "forwardPorts": [8976],
    "postCreateCommand": "rustc --version"
}
```
