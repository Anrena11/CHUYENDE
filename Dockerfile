FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y libcrypt1 \
    && rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
