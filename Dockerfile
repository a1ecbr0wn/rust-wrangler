FROM rust as rust

FROM node

COPY --from=rust /usr/local/cargo/ /usr/local/cargo/
COPY --from=rust /usr/local/rustup/ /usr/local/rustup/

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH 

RUN npm install -g wrangler; \
    rustup --version; \
    cargo --version; \
    rustc --version; \
    wrangler --version;
