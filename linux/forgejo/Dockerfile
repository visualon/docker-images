FROM codeberg.org/forgejo-experimental/forgejo:15.0.3-rootless@sha256:e7a59d193ad5e8bde19cffc68f26ee00e77a5b0014e95433eed5038f0c3888da

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
