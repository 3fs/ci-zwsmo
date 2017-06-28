FROM trifs/ci-php-full:5.6.30
MAINTAINER Dominik Znidar <dominik.znidar@3fs.si>

RUN curl -o- https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz | tar -C /usr/local -xz && \
    mkdir /go

ENV PATH=$PATH:/usr/local/go/bin:/go/bin GOPATH=/go GOROOT=/usr/local/go
