FROM renovate/renovate:24.89.4-slim@sha256:35aa333b826925d437cb10b9d571d68ad507d75cd63815f80752948146a6b4c2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000