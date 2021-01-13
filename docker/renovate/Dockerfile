FROM renovate/renovate:24.16.3-slim@sha256:8383ae2cf9bc11eaa5687c0049d2e3dccabccd745df04747a4dab05f51f61da2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000