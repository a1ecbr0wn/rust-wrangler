FROM rust:trixie AS rust

FROM node:trixie

COPY --from=rust /usr/local/cargo/ /usr/local/cargo/
COPY --from=rust /usr/local/rustup/ /usr/local/rustup/

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH \
    SHELL=/usr/bin/fish

RUN apt-get update; \
    apt-get install -y fish; \
    chsh -s $(which fish); \
    npm install -g wrangler; \
    rustup component add rustfmt; \
    rustup component add clippy; \
    rustup --version; \
    rustc --version; \
    cargo --version; \
    wrangler --version;
