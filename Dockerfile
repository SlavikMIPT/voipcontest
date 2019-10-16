
FROM debian:10.1
RUN apt-get update -y && \
    apt-get clean && \
    apt-get install -y \
    build-essential \
    autoconf \
    git \
    automake \
    make \
    libtool \
    libopus-dev \
    libssl-dev \
    libpulse-dev \
    libasound-dev && \
    apt-get clean
WORKDIR /root/src
RUN git clone --recursive https://github.com/telegramdesktop/libtgvoip.git && \
    cd libtgvoip && \
    git checkout d4a0f719ffd8d29e88474f67abc9fc862661c3b9
WORKDIR /root/src/libtgvoip
RUN autoconf && \
    rm -f aclocal.m4 && \
    aclocal && \
    libtoolize --force && \
    automake --add-missing && \
    autoreconf && \
    ./configure && \
    make