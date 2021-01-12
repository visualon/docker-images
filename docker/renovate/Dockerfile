FROM renovate/renovate:24.15.2-slim@sha256:5ac6c7923df3f6e1b4e979b5d530c817e5997f971726574a0e5814d932346f4a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000