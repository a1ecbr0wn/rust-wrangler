FROM rust:trixie AS rust

FROM node:trixie

COPY --from=rust /usr/local/cargo/ /usr/local/cargo/
COPY --from=rust /usr/local/rustup/ /usr/local/rustup/

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

RUN apt-get update; \
    apt-get install -y fish; \
    chsh -s $(which fish);

RUN npm install -g wrangler; \
    rustup --version; \
    cargo --version; \
    rustc --version; \
    wrangler --version;

CMD ["fish"]
