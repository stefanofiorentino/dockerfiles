FROM boost:latest
MAINTAINER Stefano Fiorentino <stefano.fiore84@gmail.com>
LABEL Description="Provide a CMake building environment where the Boost C++ libraries are available"

ARG cmake_version=3.2
ARG cmake_dir=cmake-3.2.2
ENV cmake_version ${cmake_version}

RUN wget http://www.cmake.org/files/v${cmake_version}/${cmake_dir}.tar.gz \
    && tar xf ${cmake_dir}.tar.gz \
    && rm ${cmake_dir}.tar.gz \
    && cd ${cmake_dir} \
    && ./configure \
    && make && make install 

CMD bash
