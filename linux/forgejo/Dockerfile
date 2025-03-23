FROM codeberg.org/forgejo-experimental/forgejo:10.0.3-rootless@sha256:5658d26e908b9acb533f86616000dd3d9619085e6979aa394d89142ed69f19b2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
