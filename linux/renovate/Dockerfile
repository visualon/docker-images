FROM renovate/renovate:24.28.0-slim@sha256:9327c10f21141d567e7fc9a1d0f0d591ec72f34678c55eca4ca48406803e7603

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000