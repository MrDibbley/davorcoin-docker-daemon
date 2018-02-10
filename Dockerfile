# Pull base image.
FROM ubuntu:14.04

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y libboost-all-dev && \
  apt-get install -y libdb++-dev && \
  apt-get install -y libminiupnpc-dev

# Add files
COPY DavorCoind /usr/bin/DavorCoind

VOLUME ["/root/.DavorCoin"]

EXPOSE 17511 47916

CMD DavorCoind
