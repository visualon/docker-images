FROM renovate/renovate:24.37.5-slim@sha256:c2031f34f52ae4f493915e52763d2ed16b2b997f66a3a57c29d71d1c02c95356

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000