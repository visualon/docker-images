FROM renovate/renovate:24.72.3-slim@sha256:2b7bef8c101a300ed0235c33d4a4befef3ea4337a0669266ef0945107d558ec5

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000