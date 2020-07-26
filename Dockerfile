FROM golang

LABEL maintainer="korjavin@gmail.com"

WORKDIR /

RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.29.0

ADD golangci-strict.yml /etc
ADD golangci-soft.yml /etc
ADD golangci-soon.yml /etc
ADD golangci-strict-lib.yml /etc
ADD golangci-soft-lib.yml /etc
ADD golangci-soon-lib.yml /etc

ENTRYPOINT ["/bin/golangci-lint"]
CMD ["--help"]
