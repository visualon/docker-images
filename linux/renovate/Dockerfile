FROM renovate/renovate:24.43.0-slim@sha256:804b8a238596c6919fac00836b5c516d603759cc088a15d527c634a269332dde

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000