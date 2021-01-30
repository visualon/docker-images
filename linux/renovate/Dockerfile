FROM renovate/renovate:24.30.1-slim@sha256:7442f37e6269542ad432380857b013babc70a9b03adee35110c512d5d33e9b57

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000