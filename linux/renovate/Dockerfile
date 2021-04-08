FROM renovate/renovate:24.104.1-slim@sha256:a1ea4774dd6d0e2711a29bf2db944b41740771600fc6566cad18677a4ef0b893

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000