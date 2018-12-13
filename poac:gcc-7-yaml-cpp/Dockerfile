FROM matken11235/poac:gcc-7-cmake

ENV DEBIAN_FRONTEND noninteractive

# Install yaml-cpp >=0.6.0
RUN git clone https://github.com/jbeder/yaml-cpp.git \
 && cd yaml-cpp \
 && mkdir build \
 && cd build \
 && cmake .. \
 && make install
