FROM renovate/renovate:24.29.4-slim@sha256:a31c40ddce380fd659fd927f8993d050284b8494742941e796fd2c3215585905

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000