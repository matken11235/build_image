FROM matken11235/poac:gcc-7-boost

ENV DEBIAN_FRONTEND noninteractive

# Install CVC4
RUN apt-get update -qq \
 && apt-get install -y -qq openjdk-8-jdk \
 && git clone -q https://github.com/cvc4/cvc4 \
 && mkdir -p cvc4pref \
 && export CVC4PREF=$HOME/cvc4pref \
 && cd cvc4/ \
 && ./contrib/get-antlr-3.4 \
 && ./contrib/get-symfpu \
 && ./contrib/get-gmp \
 && ./configure.sh --static --symfpu \
 && cd build \
 && make \
 && make check \
 && make install
