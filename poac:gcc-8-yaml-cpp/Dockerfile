FROM matken11235/poac:gcc-8-cmake

# Install yaml-cpp >=0.6.0
RUN git clone -q https://github.com/jbeder/yaml-cpp.git \
 && cd yaml-cpp \
 && mkdir build \
 && cd build \
 && cmake .. \
 && make install --silent
