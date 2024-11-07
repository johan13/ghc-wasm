FROM buildpack-deps:bookworm
RUN apt-get update && \
    apt-get install --no-install-recommends -y jq zstd && \
    curl https://gitlab.haskell.org/ghc/ghc-wasm-meta/-/raw/master/bootstrap.sh | PREFIX=/opt/ghc-wasm sh && \
    rm -rf /var/lib/apt/lists/*
# TODO: Entrypoint is overridden when used as a devcontainer.
ENTRYPOINT ["sh", "-c", ". /opt/ghc-wasm/env && exec $@", "-s"]
CMD ["bash"]
