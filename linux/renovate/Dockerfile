FROM renovate/renovate:24.78.6-slim@sha256:2e484514cbd707c7eae2b5be9c82ab3b37fbda15d8250092d04c87abf57ca79d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000