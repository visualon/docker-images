# renovate: datasource=github-releases depName=harness/drone
ARG DRONE_VERSION=v2.12.0

FROM alpine:3.15@sha256:4edbd2beb5f78b1014028f4fbb99f3237d9561100b6881aabbf5acce2c4f9454 as base

#=================
# build: go build
#=================
FROM golang:1.18.2@sha256:02c05351ed076c581854c554fa65cb2eca47b4389fb79a1fc36f21b8df59c24f as build

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

