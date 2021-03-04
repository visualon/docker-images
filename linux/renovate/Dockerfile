FROM renovate/renovate:24.72.2-slim@sha256:a17da683b8888cee525d8420a3943d82e327397aa232461202a0a0016df25ded

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000