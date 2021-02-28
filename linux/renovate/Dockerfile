FROM renovate/renovate:24.67.5-slim@sha256:3250eab9a7efb8430d3a0f06995479258f4a7fe13886fd3d9de7cf2a33627297

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000