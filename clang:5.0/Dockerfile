FROM matken11235/boost:1.67.0

ENV DEBIAN_FRONTEND noninteractive


# Install clang-5.0
RUN apt-get update -qq \
 && apt-get upgrade -y -qq \
 && apt-get install -y -qq wget \
 apt-file \
 libc++abi-dev \
 && apt-file update \
 && apt-get install -y -qq software-properties-common \
 && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - \
 && apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-5.0 main" \
 && apt-get update -qq \
 && apt-get install -y -qq aptitude \
 && aptitude update \
 && aptitude upgrade -y \
 && aptitude install -y clang-5.0

# Link clang
RUN update-alternatives --install /usr/bin/clang   clang   /usr/bin/clang-5.0 999 \
 && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-5.0 999 \
 && update-alternatives --install /usr/bin/cc  cc  /usr/bin/clang-5.0 999 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-5.0 999

ENV CC="clang" CXX="clang++" CMAKE_C_COMPILER="clang" CMAKE_CXX_COMPILER="clang++"

