FROM renovate/renovate:24.30.2-slim@sha256:33c205989fecb970cb98cd030ffbac1d7b59df9f21bafbea66042fb557bf5c6d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000