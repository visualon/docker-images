FROM renovate/renovate:24.11.0-slim@sha256:504257e5843da256aac1fcc301399696145642661988f59e4d7c9dac5615ddf2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000