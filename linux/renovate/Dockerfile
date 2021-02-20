FROM renovate/renovate:24.59.1-slim@sha256:c24b4138493edcc5a9e30826880eb32c194675df4b08bda3f1677a6dcaf7f0d9

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000