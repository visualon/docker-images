FROM renovate/renovate:23.100.0-slim@sha256:0e33912e95c2d4ec3746ede1b7850ff0cfccf5ea7cc88db3650ca6eb4e3fd03c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000