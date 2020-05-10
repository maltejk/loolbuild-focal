FROM ubuntu:20.04

ADD install-deps.sh
RUN bash /install-deps.sh
