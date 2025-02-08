FROM codeberg.org/forgejo-experimental/forgejo:10.0.1-rootless@sha256:20a12bd39d49554964e059c501d88a021a0ac04c1d3128c24921045013bd16f7

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
