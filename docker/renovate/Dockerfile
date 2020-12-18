FROM renovate/renovate:24.9.3-slim@sha256:3dbc60e3d95f1a9e5d877f246fdc78c62ad48e9952e3e8bd2c8aeabe2ba4350c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000