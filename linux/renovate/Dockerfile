FROM renovate/renovate:24.101.0-slim@sha256:e73241fa95d9a907ac0aaf464c309125c830393f18882b355f375d94dd852a8d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000