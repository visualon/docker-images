# renovate: datasource=github-releases depName=harness/drone
ARG DRONE_VERSION=v2.6.0

FROM alpine:3.15@sha256:21a3deaa0d32a8057914f36584b5288d2e5ecc984380bc0118285c70fa8c9300 as base

#=================
# build: go build
#=================
FROM golang:1.17.5@sha256:90d1ab81f3d157ca649a9ff8d251691b810d95ea6023a03cdca139df58bca599 as build

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

