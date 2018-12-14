FROM matken11235/cmake:3.11.3

ENV DEBIAN_FRONTEND noninteractive


# Install boost-1.67.0
RUN apt-get update -qq \
 && apt-get install -y -qq curl build-essential python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev \
 && curl -fsSLO https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.bz2 \
 && tar -jxvf boost_1_67_0.tar.bz2 \
 && cd boost_1_67_0 \
 && ./bootstrap.sh --prefix=/usr \
 && ./b2 \
 && ./b2 install

# Uninstall gcc
RUN apt-get remove --auto-remove -y gcc
