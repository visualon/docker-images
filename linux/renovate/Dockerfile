FROM renovate/renovate:24.98.5-slim@sha256:ba17b09c74fb617d6da74aefdf4db327631d8475b37c8b735e7eb1cad4172fe6

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000