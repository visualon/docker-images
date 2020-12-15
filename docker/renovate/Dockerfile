FROM renovate/renovate:24.4.0-slim@sha256:1e00703b23d77229e21db4b9448a1b30dbe6de7ff7de282f634d4b81981b9138

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000