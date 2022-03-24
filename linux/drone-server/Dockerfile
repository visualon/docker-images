# renovate: datasource=github-releases depName=harness/drone
ARG DRONE_VERSION=v2.11.1

FROM alpine:3.15@sha256:ceeae2849a425ef1a7e591d8288f1a58cdf1f4e8d9da7510e29ea829e61cf512 as base

#=================
# build: go build
#=================
FROM golang:1.18.0@sha256:fb5993c8c22ae9fec57f91a3e59825f9368d01b1d15a984d83080cac575f79b8 as build

ARG DRONE_VERSION
RUN git clone --depth 1 --branch "${DRONE_VERSION}"  https://github.com/harness/drone.git

WORKDIR /go/drone

RUN go build -tags "nolimit" -ldflags "-extldflags \"-static\"" -o /bin/drone-server  github.com/drone/drone/cmd/drone-server

#=================
# final
#=================
FROM base as final

RUN apk add --no-cache ca-certificates tzdata dumb-init

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/visualon/docker-images" \
    org.opencontainers.image.url="https://github.com/visualon/docker-images"

EXPOSE 80 443
VOLUME /data

RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf

ENV GODEBUG netdns=go
ENV XDG_CACHE_HOME /data
ENV DRONE_DATABASE_DRIVER sqlite3
ENV DRONE_DATABASE_DATASOURCE /data/database.sqlite
ENV DRONE_RUNNER_OS=linux
ENV DRONE_RUNNER_ARCH=amd64
ENV DRONE_SERVER_PORT=:80
ENV DRONE_SERVER_HOST=localhost
ENV DRONE_DATADOG_ENABLED=false
#ENV DRONE_DATADOG_ENDPOINT=https://stats.drone.ci/api/v1/series

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/bin/drone-server"]

ARG DRONE_VERSION
LABEL org.opencontainers.image.version="${DRONE_VERSION}"

COPY --from=build /bin/drone-server /bin/

