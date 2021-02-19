FROM renovate/renovate:24.56.0-slim@sha256:b2d379c97e21adfc02cab36ca2a6f35d02106bb9f3529f83139273e205ac2f8a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000