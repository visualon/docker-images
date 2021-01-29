FROM renovate/renovate:24.30.0-slim@sha256:a2ce18000270e87d7af1568981ab51e1e9b4c16121b21033c9a54df0727ac712

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000