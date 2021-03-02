FROM renovate/renovate:24.70.3-slim@sha256:da25494bf561df58349f6f94a8662c5047f3816e38fa33c861905aef1128d894

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000