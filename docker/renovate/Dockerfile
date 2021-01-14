FROM renovate/renovate:24.16.6-slim@sha256:4da39edf3c7ee92c9d97a531849c6eaf19f8c8dd5975c2e90cd0ff00bae0adba

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000