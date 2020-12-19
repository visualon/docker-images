FROM renovate/renovate:24.9.5-slim@sha256:c7791a2be649c0c5beac5123e4da284bd4242f678fa8957abdb5f6befdfcd506

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000