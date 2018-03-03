# Build image
FROM debian:stretch as builder

RUN apt-get update -y
RUN apt-get install -y gcc

WORKDIR /build/
COPY example.c .
RUN gcc example.c -o example

# Run image
FROM debian:stretch

RUN apt-get update -qy
RUN apt-get install -qy socat

ENV USER example
ENV PORT 1337

RUN useradd $USER
RUN mkdir /home/$USER
WORKDIR /home/$USER

COPY --from=builder /build/example .
COPY run .
COPY flag .
RUN chmod 555 run example

EXPOSE $PORT
CMD ["./run", "./example"]
