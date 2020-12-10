FROM renovate/renovate:23.100.2-slim@sha256:d73b70711d02c204368b2fc364b063dd338d51732af3530086b04fcc96f5cff7

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000