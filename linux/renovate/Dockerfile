FROM renovate/renovate:24.75.0-slim@sha256:b069572dd7be5f23a295ca67488d165ed9b34313be641a5a13dcef740d58ed7c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000