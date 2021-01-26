FROM renovate/renovate:24.28.2-slim@sha256:a7db52238bcf17454073cdaaa0fbcaabd4cab18b4c8d71168123d843d0799ac2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000