FROM renovate/renovate:24.72.4-slim@sha256:854ae262dcb277d0f45f007564339ce595b2282bfda6e66b541a10fa06d6efc4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000