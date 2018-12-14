FROM matken11235/poac:gcc-7-yaml-cpp

# Install boost-1.67.0
RUN apt-get update -qq \
 && apt-get install -y -qq \
 curl \
 build-essential \
 python-dev \
 autotools-dev \
 libicu-dev \
 build-essential \
 libbz2-dev \
 libboost-all-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN curl -fsSLO https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.bz2 \
 && tar -jxf boost_1_67_0.tar.bz2 \
 && rm -rf boost_1_67_0.tar.bz2

RUN cd boost_1_67_0 \
 && ./bootstrap.sh \
 && ./b2 install -j4
