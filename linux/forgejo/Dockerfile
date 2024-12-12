FROM code.forgejo.org/forgejo/forgejo:9.0.3-rootless@sha256:bc1786d04bcbfac59e6a548e95e68bf113b57125c0ddd2adaa08c7885fc683d2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
