FROM renovate/renovate:24.74.2-slim@sha256:d6afe6c135b45c706dfc3b31bf2ad51a89bcee7096dc99b66cd8df00218d8617

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000