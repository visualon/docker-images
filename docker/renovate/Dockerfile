FROM renovate/renovate:24.9.8-slim@sha256:1c4d5003f5091b850202fcfc41352613b7ede3115bb75ba7e89c141d861f0acd

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000