# syntax=docker/dockerfile:1.6
FROM rustlang/rust:nightly-slim AS builder
WORKDIR /build
RUN apt-get update && apt-get upgrade -y
COPY . .
WORKDIR /build/rust-ci
RUN --mount=type=cache,target=/usr/local/cargo/registry \
    --mount=type=cache,target=/usr/local/cargo/git \
    --mount=type=cache,target=/build/rust-ci/target \
    cargo build --release --bin rust-ci \
    && mkdir -p /build/artifacts \
    && cp /build/rust-ci/target/release/rust-ci /build/artifacts/

FROM debian:trixie-slim AS runtime
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*
RUN useradd -m -u 1000 kira
COPY --from=builder /build/artifacts/kira /usr/local/bin/kira
USER kira
ENTRYPOINT ["/usr/local/bin/rust-ci"]
CMD [ "/bin/ls", "-ls" ]