FROM golang:1.12

RUN apt-get update && apt-get install -y --no-install-recommends rake imagemagick
COPY files/sdluatex /usr/local/bin/
RUN chmod 755 /go/
WORKDIR /root
ENV GOCACHE /tmp/gocache

ENV PATH="${PATH}:/develop/publisher/bin"

