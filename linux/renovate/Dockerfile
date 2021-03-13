FROM renovate/renovate:24.80.2-slim@sha256:f3ee9e1c66bc96e640b808dc98dabe465b63d903e7a9997fd505191932ac2e0f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000