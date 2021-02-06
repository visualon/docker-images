FROM renovate/renovate:24.40.2-slim@sha256:0063375aeb7dcc79bbed97b72e068f06f63529625ca56fb7b99150d718020531

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000