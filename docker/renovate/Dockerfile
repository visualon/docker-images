FROM renovate/renovate:24.16.2-slim@sha256:fbfe82053f525ab7414854436f6e8382dce8e62db3fc009827da851e55c5d443

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000