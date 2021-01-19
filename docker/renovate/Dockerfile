FROM renovate/renovate:24.25.1-slim@sha256:5a294256a9051c6f62559231f9d16516dd18a247766d96fc52676f7fef12fbf5

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000