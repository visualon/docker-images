FROM codeberg.org/forgejo-experimental/forgejo:12.0.3-rootless@sha256:4a3e7286a633fd6d1538331a6265a66afd205ff42e279fcdcd6b53149da0e896

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
