FROM golang

LABEL maintainer="korjavin@gmail.com"

WORKDIR /
RUN git clone https://github.com/korjavin/golangci-lint-1.git
WORKDIR /golangci-lint-1
RUN make build
RUN cp ./golangci-lint /bin/golangci-lint

#RUN curl -sfL https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s


ENTRYPOINT ["/bin/golangci-lint"]
CMD ["--help"]
