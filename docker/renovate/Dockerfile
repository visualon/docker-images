FROM renovate/renovate:24.0.2-slim@sha256:6aa263be1d84e09607aa9f70030316b7e42c65e93011c5b26079f4fd845635b8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000