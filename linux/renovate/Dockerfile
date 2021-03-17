FROM renovate/renovate:24.88.0-slim@sha256:a6f8ef07bcc83ac9790149e6c08395326270c4972cb0fdddfa88eaa1497a5d00

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000