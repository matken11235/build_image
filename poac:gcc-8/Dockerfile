FROM gcc:8

ENV DEBIAN_FRONTEND noninteractive


# Install cmake-3.11.3
RUN apt-get update -qq \
 && apt-get install -y -qq build-essential gcc wget \
 libcurl4-gnutls-dev \
 libtinfo5 \
 libstdc++6 \
 && wget -q https://cmake.org/files/v3.11/cmake-3.11.3.tar.gz \
 && tar -xzvf cmake-3.11.3.tar.gz \
 && cd cmake-3.11.3 \
 && ./bootstrap \
 && make -j4 \
 && make install

# Install yaml-cpp >=0.6.0
RUN git clone https://github.com/jbeder/yaml-cpp.git \
 && cd yaml-cpp \
 && mkdir build \
 && cd build \
 && cmake .. \
 && make install

# Install boost-1.67.0
RUN apt-get update -qq \
 && apt-get install -y -qq curl build-essential python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev \
 && curl -fsSLO https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.bz2 \
 && tar -jxvf boost_1_67_0.tar.bz2 \
 && cd boost_1_67_0 \
 && ./bootstrap.sh --prefix=/usr \
 && ./b2 \
 && ./b2 install

