FROM codeberg.org/forgejo/forgejo:1.18.5-0-rootless@sha256:e94cc333f336a7bdbc02d10575f7d92b10440c682dc846e6c544d779b8ea0656

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo" \
    org.opencontainers.image.source="https://codeberg.org/forgejo/forgejo" \
    org.opencontainers.image.url="https://codeberg.org/forgejo/forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
