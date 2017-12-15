FROM ubuntu:14.04
MAINTAINER Stefano Fiorentino <stefano.fiore84@gmail.com>
LABEL Description="Provide an Ubuntu 14.04 LTS Development Environment"

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y lxde tightvncserver \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ARG boost_version=1.62.0
# ARG boost_dir=boost_1_62_0
# ENV boost_version ${boost_version}

# RUN wget http://downloads.sourceforge.net/project/boost/boost/${boost_version}/${boost_dir}.tar.gz \
#     && tar xfz ${boost_dir}.tar.gz \
#     && rm ${boost_dir}.tar.gz \
#     && cd ${boost_dir} \
#     && ./bootstrap.sh \
#     && ./b2 --without-python --prefix=/usr link=shared runtime-link=shared install \
#     && cd .. && rm -rf ${boost_dir} && ldconfig

# ARG cmake_version=3.5
# ARG cmake_dir=cmake-3.5.2
# ENV cmake_version ${cmake_version}

# RUN wget http://www.cmake.org/files/v${cmake_version}/${cmake_dir}.tar.gz \
#     && tar xf ${cmake_dir}.tar.gz \
#     && rm ${cmake_dir}.tar.gz \
#     && cd ${cmake_dir} \
#     && ./configure \
#     && make && make install 

ARG DISPLAY=":17"
ENV DISPLAY ${DISPLAY}

ARG VNCSERVER_OPTIONS="-geometry 1024x768 -alwaysshared"
ENV VNCSERVER_OPTIONS ${VNCSERVER_OPTIONS}

RUN mkdir -p /root/.vnc \
    && echo password | tightvncpasswd -f > /root/.vnc/passwd \
    && chmod 600 /root/.vnc/passwd

RUN echo "#!/bin/bash\nxrdb $HOME/.Xresources\nstartlxde &" > /root/.vnc/xstartup \
    && chmod +x /root/.vnc/xstartup

EXPOSE 5917

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]