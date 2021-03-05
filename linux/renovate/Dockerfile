FROM renovate/renovate:24.72.5-slim@sha256:37453dc91047ca15f194936acdc9cf4fe353ff6202c89810191d88630d422cb4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000