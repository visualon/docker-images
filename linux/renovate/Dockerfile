FROM renovate/renovate:24.38.4-slim@sha256:154a84282053c6b7ad1a71b23396dd4cc83b11088953c10735aa1ab63d3dc26c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000