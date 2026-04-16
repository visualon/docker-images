FROM codeberg.org/forgejo-experimental/forgejo:15.0.0-rootless@sha256:ab6ca32ae0d5af2494b77aa22dd5cd2f24087f4325b396d09188b695ce004e24

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
