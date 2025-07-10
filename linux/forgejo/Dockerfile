FROM codeberg.org/forgejo-experimental/forgejo:11.0.3-rootless@sha256:691657c7e64af7730a2e885e6d022cf16ae60724931c5392bd61838afadcaeba

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
