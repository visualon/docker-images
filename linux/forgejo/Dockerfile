FROM code.forgejo.org/forgejo/forgejo:9.0.1-rootless@sha256:871b9ee033bbce261cb8306240f05cc902c118b40ddba2a72d8111f1ba0fe30e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
