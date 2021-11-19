# renovate: datasource=github-releases depName=harness/drone
ARG DRONE_VERSION=v2.4.0

FROM alpine:3.15@sha256:fb150366bfb5a297a7f8852e0cec462a12f638374f8a04ad235c56a97e780add as base

#=================
# build: go build
#=================
FROM golang:1.17.3@sha256:4f0671cf24397b6f98013bfc47882d4299573639c3714825297ddbd4b621ee92 as build

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

