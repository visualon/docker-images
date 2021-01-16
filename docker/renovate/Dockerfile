FROM renovate/renovate:24.19.0-slim@sha256:76849283042b59397401f4414bafd29e9cff8c302926bfd336aaa9a08b2ae5b1

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000