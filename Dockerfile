FROM ubuntu:xenial

# Based on https://hub.docker.com/r/dalibo/pandocker/~/dockerfile/
RUN apt-get -qq update && \
  apt-get -qy install \
  wget \
  python3-pip \
  texlive \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  lmodern \
  texlive-luatex \
  texlive-pstricks \
  texlive-xetex \
  latexmk \
  git \
  && apt-get clean

# Pull the pandoc release
RUN wget https://github.com/jgm/pandoc/releases/download/2.7.1/pandoc-2.7.1-1-amd64.deb
# install pandoc release from debian package
RUN dpkg -i pandoc-2.7.1-1-amd64.deb
# install required pandoc files
RUN pip3 install pandoc-eqnos pandoc-fignos pandoc-tablenos
