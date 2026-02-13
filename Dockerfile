FROM rust:1.67

WORKDIR /usr/src/rustci
COPY . .

RUN cargo install --path .

CMD [ "/bin/ls", "-l" ]