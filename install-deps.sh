#!/bin/bash
set -x
export TZ="Etc/UTC"
sed -i 's/# deb-/deb-/' /etc/apt/sources.list
apt-get update
apt-get -y build-dep libreoffice
apt-get -y install openssl g++ libssl-dev libpoco-dev libkrb5-dev libpng-dev \
	libcap-dev libtool m4 automake libcppunit-dev libcppunit-doc pkg-config \
	curl git devscripts fakeroot
curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt-get install -y nodejs
npm install -g jake

