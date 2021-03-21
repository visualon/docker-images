FROM renovate/renovate:24.91.1-slim@sha256:1901f85915068873e87b66aed0b771821303004cd1a4dc9c9ce8eabdb0749f2a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000