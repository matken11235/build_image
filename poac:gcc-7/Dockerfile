FROM matken11235/poac:gcc-7-boost

ENV DEBIAN_FRONTEND noninteractive

# Install CVC4
RUN git clone https://github.com/cvc4/cvc4 \
 && mkdir -p cvc4pref \
 && CVC4PREF=$HOME/cvc4pref \
 && cd cvc4/ \
 && ./autogen.sh
 && ./contrib/get-antlr-3.4
 && ./configure --with-antlr-dir=`pwd`/antlr-3.4 ANTLR=`pwd`/antlr-3.4/bin/antlr3 --prefix=$CVC4PREF
 && make
 && make check
 && make install
