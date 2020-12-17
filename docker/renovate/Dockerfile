FROM renovate/renovate:24.6.1-slim@sha256:df4af65cf7cfd3d223c490212ca7797d4831f30c8441cf47077ff6c1b657e8b9

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000