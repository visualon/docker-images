FROM renovate/renovate:24.10.4-slim@sha256:3fbd1519cbe2ea63fb63531042f2223c2d744949f66d6540b1002550b8819c44

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000