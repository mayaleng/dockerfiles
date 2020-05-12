FROM alpine:3.11

WORKDIR /opt

RUN apk update \
    && apk upgrade \
    && apk add tar gcc bash build-base perl perl-utils make git perl-dev

RUN cpan < /dev/null \
    && cpan inc::latest \
    && cpan Module::Build \
    && cpan Module::Runtime \
    && cpan Moo \
    && cpan Getopt::ArgParse \
    && cpan LWP::UserAgent \
    && cpan HTTP::Request::Common \
    && apk add zlib-dev \
    && cpan Storable \
    && cpan PerlIO::gzip

RUN git clone https://github.com/citiususc/Linguakit.git

WORKDIR /opt/Linguakit

RUN make deps && make install

WORKDIR /
