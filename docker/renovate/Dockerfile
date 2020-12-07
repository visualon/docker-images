FROM renovate/renovate:23.96.2-slim@sha256:31635c0aa05cb23abbf5fd5e093472a8a9559f11c50d793c4d3860c86d90d45b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000