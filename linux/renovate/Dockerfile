FROM renovate/renovate:24.34.0-slim@sha256:2563b79a073038ecf4a8c3aa97475b8d9e3f5ae5fbd4750131a130ec55ffa93b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000