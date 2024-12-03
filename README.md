# GHC WASM
Glasgow Haskell Compiler Webassembly toolchain. Published on [Docker Hub](https://hub.docker.com/r/jlevin/ghc-wasm).

Build with:
```sh
docker build --no-cache -t jlevin/ghc-wasm .
docker tag jlevin/ghc-wasm jlevin/ghc-wasm:X.X # Replace with new version number
docker push jlevin/ghc-wasm:latest
docker push jlevin/ghc-wasm:X.X
```
