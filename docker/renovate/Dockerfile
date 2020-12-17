FROM renovate/renovate:24.6.0-slim@sha256:733ad5cdef6bd5ce124e36e3b633f1b839d5c8f2cfa39eee2a2c80b01b673bfc

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000