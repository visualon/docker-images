FROM renovate/renovate:24.34.2-slim@sha256:cb4c765f7e23d2c8c357e81fd4c79a2c3244a47909f49f2db9c22bc6acdba6e0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000