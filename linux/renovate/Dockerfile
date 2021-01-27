FROM renovate/renovate:24.28.4-slim@sha256:75c4bedb5c535e42bb7d998060b674125607e53ebb03d1b2f5dffe899d29c786

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000