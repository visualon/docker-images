FROM golang:1.14.13-alpine3.12 as build

ARG DRONE_VERSION=1.10.0

RUN git clone --depth 1 --branch "v${DRONE_VERSION}"  https://github.com/drone/drone.git

RUN go build -tags "nolimit" -ldflags "-extldflags \"-static\"" -o bin/drone-server  github.com/drone/drone/cmd/drone-server

FROM alpine:3.12 as alpine
RUN apk add -U --no-cache ca-certificates

FROM alpine:3.12
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
