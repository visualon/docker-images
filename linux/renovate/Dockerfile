FROM renovate/renovate:24.49.4-slim@sha256:cfb84e5d96e77e1e4c4e3ecd3eda8fe904c67970fd7fc808f02ad30654159c76

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000