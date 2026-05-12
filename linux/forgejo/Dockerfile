FROM codeberg.org/forgejo-experimental/forgejo:15.0.2-rootless@sha256:cc2d74fb4c30385a8ee34de8c8f83344f7316cec70bd2cc7eb82b2802fa28e0b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
