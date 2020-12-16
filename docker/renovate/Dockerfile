FROM renovate/renovate:24.5.1-slim@sha256:6511b1b70389c32156ab0677fe45f0343cb002551ef93c96df30ec7ca2fb460f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000