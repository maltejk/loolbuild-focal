FROM ubuntu:20.04

ENV TZ="Etc/UTC"
ENV DEBIAN_FRONTEND="noninteractive"
RUN sed -i 's/# deb-/deb-/' /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y build-dep libreoffice \
    && apt-get -y install openssl g++ libssl-dev libpoco-dev libkrb5-dev libpng-dev \
        libcap-dev libtool m4 automake libcppunit-dev libcppunit-doc pkg-config \
        curl git devscripts fakeroot dh-systemd python-lxml python3-polib \
        libpam-dev cpio libreoffice libreoffice-dev libreofficekit-dev \
        nodejs npm sudo lsb-release \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g jake \
    && sed -i 's/%sudo.*/%sudo ALL=(ALL:ALL) NOPASSWD: ALL/g' /etc/sudoers \
    && useradd -m -G sudo -s /bin/bash -u 1001 ubuntu

USER 1001
