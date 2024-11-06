FROM debian:12
RUN apt-get update && \
    apt-get install --no-install-recommends -y curl ca-certificates jq unzip xz-utils zstd build-essential && \
    curl https://gitlab.haskell.org/ghc/ghc-wasm-meta/-/raw/master/bootstrap.sh | PREFIX=/opt/ghc-wasm sh

FROM debian:12
COPY --from=0 /opt/ghc-wasm /opt/ghc-wasm
RUN echo ". /opt/ghc-wasm/env" >> /etc/bash.bashrc
