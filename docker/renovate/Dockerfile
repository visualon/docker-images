FROM renovate/renovate:24.9.6-slim@sha256:dbb0ddffb5c605507f4001709e0a8184ca239476a4f83082d80cb2f708989917

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000