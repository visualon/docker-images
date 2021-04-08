FROM renovate/renovate:24.108.0-slim@sha256:9ab3409485f6fdc1ba35606d621afd6c147c8d3a87201660def1ba2538cfc0e4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000