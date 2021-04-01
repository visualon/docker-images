FROM renovate/renovate:24.98.3-slim@sha256:17911535cf24d775f4ebbcf55c4a0a7d56da12daea08910d266bb0f3266e3ce1

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000