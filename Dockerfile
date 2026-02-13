FROM rustlang/rust:nightly-slim

WORKDIR /usr/src/rustci
COPY . .

RUN cargo install --path .

CMD [ "/bin/ls", "-l" ]