FROM code.forgejo.org/forgejo/forgejo:7.0.6-rootless@sha256:b4cc1ad25e6d27779c52853841eff2d9077dd43e1fbec3fa2ad5dd6d56884218

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="forgejo"

USER root

COPY ./vo-root.crt /usr/local/share/ca-certificates/visualon-root.crt
RUN update-ca-certificates

USER 1000:1000
