FROM codeberg.org/forgejo-experimental/forgejo:16.0.1-rootless@sha256:71863f6b6c5837a27b3a2d133c3161c78a432aa878d57798d74b1d917ff842be

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
