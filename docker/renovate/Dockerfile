FROM renovate/renovate:23.100.3-slim@sha256:2ffaf664681694bf34ddb3a4a66424f6b7069edbeb68201bc8208ad6efe202f0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000