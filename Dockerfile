FROM fedora:21
RUN yum install git gcc
RUN mkdir /git.src
WORKDIR /git.src
RUN git clone git://git.skarnet.org/execline
RUN git clone git://git.skarnet.org/s6 
RUN git clone git://git.skarnet.org/skalibs
WORKDIR /git.src/skalibs
RUN ./configure && make && make install
WORKDIR /git.src/execline
RUN ./configure && make && make install
WORKDIR /git.src/s6
RUN ./configure && make && make install
