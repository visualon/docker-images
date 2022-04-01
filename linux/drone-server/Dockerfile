# renovate: datasource=github-releases depName=harness/drone
ARG DRONE_VERSION=v2.11.1

FROM alpine:3.15@sha256:f22945d45ee2eb4dd463ed5a431d9f04fcd80ca768bb1acf898d91ce51f7bf04 as base

#=================
# build: go build
#=================
FROM golang:1.18.0@sha256:5eb58ca0a747ed2e2f4e069d1116badb02a172cf160d31f801776a2342c12863 as build

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

