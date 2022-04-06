FROM golang:1.17.8-alpine

RUN apk add --no-cache git

WORKDIR /go/src/github.com/c9s

RUN git clone https://github.com/c9s/requestgen.git \
    && cd requestgen \
    && go install ./cmd/requestgen

WORKDIR /go/src/github.com/c9s/requestgen/example/api

CMD [ "go", "generate" ]
