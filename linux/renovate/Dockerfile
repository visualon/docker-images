FROM renovate/renovate:24.89.2-slim@sha256:33ecfd79aa1612cf1c2044edd989627040b94d64213a22a44ce3a2dd3802138d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000