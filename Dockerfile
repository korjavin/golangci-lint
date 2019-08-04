FROM golang

LABEL maintainer="korjavin@gmail.com"

WORKDIR /

RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.15.0
RUN curl -sfL https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s


ENTRYPOINT ["/bin/golangci-lint"]
CMD ["--help"]

