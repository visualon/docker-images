FROM renovate/renovate:24.32.5-slim@sha256:2145f59774ea0fe7bff94551d1ffd7c2ec0d07e16d7ce07b5a791dc0a8eb723c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000