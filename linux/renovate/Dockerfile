FROM renovate/renovate:24.64.2-slim@sha256:e07a1d182b5ce967d1b4b45e7423c85ddf546f752f2b5952378ca6f162cbf331

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000