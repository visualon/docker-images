FROM alpine:3.12@sha256:074d3636ebda6dd446d0d00304c4454f468237fdacf08fb0eeac90bdbfa1bac7 as base

#=================
# build: go build
#=================
FROM golang:1.14.13@sha256:fc26ea65159b5c1f296fe74ca3d835ef7bc17f6a4e9dac52006964752ea05c12 as build

# renovate: datasource=github-tags depName=drone/drone
ARG DRONE_VERSION=1.10.1
RUN git clone --depth 1 --branch "v${DRONE_VERSION}"  https://github.com/drone/drone.git

WORKDIR /go/drone

RUN go build -tags "nolimit" -ldflags "-extldflags \"-static\"" -o /bin/drone-server  github.com/drone/drone/cmd/drone-server

#=================
# alpine: ca certs
#=================
FROM base as alpine
RUN apk add -U --no-cache ca-certificates

#=================
# final
#=================
FROM base as final

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"

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

COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

COPY --from=build /bin/drone-server /bin/
ENTRYPOINT ["/bin/drone-server"]
