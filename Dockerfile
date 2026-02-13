FROM rustlang/rust:nightly-slim
COPY ./ ./
RUN cargo +nightly build -Z no-index-update
# RUN cargo build --release
CMD ["./target/release/rust-ci"]