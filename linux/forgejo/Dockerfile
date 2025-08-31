FROM codeberg.org/forgejo-experimental/forgejo:12.0.2-rootless@sha256:eaf9b09bc07fe248c224b6b311ed16b619245ca41707a42045b805a3d0382d10

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
