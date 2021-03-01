FROM renovate/renovate:24.68.1-slim@sha256:6c5d467c71f5efabeff54e6b913eacdac548aee369ec9f2d1eb6f352245710b8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000