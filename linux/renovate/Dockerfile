FROM renovate/renovate:24.31.0-slim@sha256:2d22860d0016a22d5c157e99fc8ada5ad5ab530d89eb566111af14b634328dda

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000