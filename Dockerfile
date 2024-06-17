FROM amazonlinux:2

RUN apt-get update \
    && apt-get install -y libcrypt1 \
    && rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu

FROM python:3.7

# Cài đặt thư viện libcrypt
RUN apt-get update && apt-get install -y libcrypt1

# Tiếp tục các bước cài đặt khác...

