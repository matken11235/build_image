FROM gcc:8

ENV DEBIAN_FRONTEND noninteractive

# Install CVC4
RUN git clone -q https://github.com/cvc4/cvc4 \
 && mkdir -p cvc4pref \
 && export CVC4PREF=$HOME/cvc4pref \
 && cd cvc4/ \
 && ./contrib/get-antlr-3.4 \
 && ./contrib/get-symfpu \
 && ./contrib/get-gmp \
 && ./configure.s --static --symfpu \
 && cd build \
 && make \
 && make check \
 && make install
