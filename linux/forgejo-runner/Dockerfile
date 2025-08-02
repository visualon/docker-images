FROM code.forgejo.org/forgejo/runner:9.0.2@sha256:712b34417cad0974a671e7ffffd4e8fe70d6afcebfe6ad6f51770c008840c199

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo-runner"

USER root

# add missing packages
RUN apk add --no-cache ca-certificates
COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
