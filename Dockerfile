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
WORKDIR /usr/local/src
COPY build.sh /usr/local/bin/
RUN ln -s /usr/local/bin/build.sh / # backwards compat
ENTRYPOINT ["build.sh"]
