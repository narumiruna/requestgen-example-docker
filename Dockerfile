FROM golang:1.17.8-alpine

RUN apk add --no-cache git

WORKDIR /workspace

RUN git clone https://github.com/c9s/requestgen.git \
    && cd requestgen \
    && go install ./cmd/requestgen

WORKDIR /workspace/requestgen/example/api

CMD [ "go", "generate" ]