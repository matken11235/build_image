FROM matken11235/poac:gcc-8-boost

# Install CVC4
RUN apt-get update -qq \
 && apt-get install -y -qq openjdk-8-jdk \
 && git clone -q https://github.com/cvc4/cvc4 \
 && cd cvc4/ \
 && ./contrib/get-antlr-3.4 \
 && ./contrib/get-symfpu \
 && ./contrib/get-gmp \
 && ./configure.sh --static --symfpu \
 && cd build \
 && make \
 && make check \
 && make install \
 ; exit 0
