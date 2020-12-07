FROM renovate/renovate:23.96.0-slim@sha256:40f094a4aaab735b8409b86db39e74b21f9803580ff9242c37635ec0fdca6a2b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000