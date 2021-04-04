FROM renovate/renovate:24.100.0-slim@sha256:fa6b84f5da6e73513666b372ef64a8a9e7397289ea9435050ee5e40b7497e64b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000