FROM golang

LABEL maintainer="korjavin@gmail.com"

WORKDIR /

RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.16.0

ENTRYPOINT ["/bin/golangci-lint"]
CMD ["--help"]

