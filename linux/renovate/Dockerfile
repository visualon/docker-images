FROM renovate/renovate:24.71.4-slim@sha256:9071088be7d2f9c9dc61dc02f01c50ca2b9b9bc83d80ebf816f6991ee650c523

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000