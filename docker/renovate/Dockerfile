FROM renovate/renovate:24.18.0-slim@sha256:c8acce412865ac3959d6557232ba7c590a9ed9e3854dc17d65bc053288d2b1bc

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000