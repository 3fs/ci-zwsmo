FROM trifs/ci-php-full:5.6.30
MAINTAINER Dominik Znidar <dominik.znidar@3fs.si>

# Add golang 1.6.2
RUN curl -O https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.6.2.linux-amd64.tar.gz && \
    rm go1.6.2.linux-amd64.tar.gz && \
    mkdir /go
ENV PATH=$PATH:/usr/local/go/bin:/go/bin GOPATH="/go" GOROOT="/usr/local/go"
