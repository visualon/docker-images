FROM renovate/renovate:24.25.2-slim@sha256:f03a1e25ed332016243055934c4c3dc771b502590700f8f84870d32f04c34fd3

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000