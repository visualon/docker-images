FROM renovate/renovate:24.52.1-slim@sha256:f2fb7c90a5bd2a18b562b406c801d071bdd5adf067042ca0c530c5cc44a8c532

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000