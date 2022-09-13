FROM golang:1.17

LABEL maintainer="korjavin@gmail.com"

WORKDIR /app

RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.44.0
RUN mv ./bin/golangci-lint /bin/golangci-lint

ADD golangci-strict.yml /etc
ADD golangci-strict-lib.yml /etc
ADD golangci-strict-scraper.yml /etc
ADD golangci-soft.yml /etc
ADD golangci-soft-lib.yml /etc
ADD golangci-soon.yml /etc
ADD golangci-soon-lib.yml /etc
ADD golangci-codequality.yml /etc

ENTRYPOINT ["/bin/golangci-lint"]
CMD ["--help"]
