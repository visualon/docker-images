FROM renovate/renovate:24.99.0-slim@sha256:a6dae799d361fdfe60426da5c3e5c893954dfc47427b342422e5504b12f68da2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000