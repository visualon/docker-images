FROM renovate/renovate:24.105.0-slim@sha256:46abfc61a99ec5cee430dc2bc62a533b3cdc72cd76f57dc51871d28040009532

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000