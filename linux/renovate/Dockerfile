FROM renovate/renovate:24.103.3-slim@sha256:86f90e526908f2091c678b6bf98b5d0104af79b674531f86641f4abd00de34f2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000