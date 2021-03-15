FROM renovate/renovate:24.83.0-slim@sha256:0660f3f5c749a576f8de0988230fe180b002b013f2a24f6534cffe0224eb8724

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000