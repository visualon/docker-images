FROM renovate/renovate:23.97.0-slim@sha256:aec23ef9f76fed1cd975c4cc6504b3723f4bbb8ca92cdb7de7956032cfeeb513

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000