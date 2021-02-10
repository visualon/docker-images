FROM renovate/renovate:24.44.1-slim@sha256:b7259f8a2219932808cd295d4a4998dd90851933ba40b3cfd1cc24e05f3210bd

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000