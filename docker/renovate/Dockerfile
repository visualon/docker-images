FROM renovate/renovate:23.96.3-slim@sha256:9be4379c202f5ee8894602ed5ce4fadc6264c692e217f418f59a1d9c6bb1a763

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000