FROM renovate/renovate:24.32.3-slim@sha256:8a9241afb01eaff7a33f20ef5fa2fa7c9a4f6e327e54a0ee6b4818b4258e4eb4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000