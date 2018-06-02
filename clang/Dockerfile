FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive


# Install cmake
RUN apt-get update -qq \
 && apt-get install -y -qq wget gcc build-essential \
 && wget -q https://cmake.org/files/v3.11/cmake-3.11.3.tar.gz \
 && tar -xzvf cmake-3.11.3.tar.gz \
 && cd cmake-3.11.3 \
 && ./bootstrap \
 && make -j4 \
 && make install

# Install clang-6.0
RUN apt-get update -qq && \
    apt-get install -y -qq wget apt-file && \
    apt-file update && \
    apt-get install -y -qq software-properties-common && \
    wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main" && \
    apt-get update -qq && \
    apt-get install -y -qq clang-6.0

# Link clang
RUN update-alternatives --install /usr/bin/clang   clang   /usr/bin/clang-6.0 999 \
 && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 999 \
 && update-alternatives --install /usr/bin/cc  cc  /usr/bin/clang-6.0 999 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-6.0 999

# Install boost
RUN apt-get update -qq \
 && apt-get install -y -qq libboost-all-dev

ENV CC="ccache clang" CXX="ccache clang++"

