FROM renovate/renovate:24.98.9-slim@sha256:28002e33ec8cfd3ea4c6b8d16b33f2165ba99b8313ce2bc508ead123000f3388

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000