FROM renovate/renovate:24.60.1-slim@sha256:f0201f45a3a896855a96b864e65e10031292787f9de66fbdd643e39b234d0810

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000