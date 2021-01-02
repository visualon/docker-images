FROM renovate/renovate:24.11.3-slim@sha256:e0f6b663632f28ec3016b3644135c3f01e0ca6bbed71129b50e271f4806bebef

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000