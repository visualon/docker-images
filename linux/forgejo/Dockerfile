FROM codeberg.org/forgejo-experimental/forgejo:15.0.4-rootless@sha256:aea6847e7e18130f173616a92433e47e00813bbe7b42e3732cbbb5f237164096

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
