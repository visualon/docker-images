FROM renovate/renovate:24.42.1-slim@sha256:0262e5330c8648adb852e69d2f3d7d839df2306d5bd53eb8e285d34fbf67c42f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000