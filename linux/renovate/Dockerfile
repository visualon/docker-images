FROM renovate/renovate:24.38.3-slim@sha256:3ff6656803f090ba9caaa3a535beb9d7425e6bddcdbdbce2111482ff788d467d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000