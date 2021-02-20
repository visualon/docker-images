FROM renovate/renovate:24.56.1-slim@sha256:1c5b5e54572120fb8235873b3ff3324b461f4136ba7210c7adaae00f7d783ee4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000