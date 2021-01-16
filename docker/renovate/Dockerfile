FROM renovate/renovate:24.17.3-slim@sha256:ccdf9b22d62c92d317f5abbd0fde802e284ad7255618b957a93f43a322af36d9

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000