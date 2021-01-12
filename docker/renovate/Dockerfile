FROM renovate/renovate:24.16.1-slim@sha256:142ec1137209ea70768873ca7260e405caccc9c2142d8fabce5ca52187bedf2f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000