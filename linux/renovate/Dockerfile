FROM renovate/renovate:24.26.0-slim@sha256:772766d8fa4ff4aeac83410f2e5541c6aed6dc285feeb89a90847c1098f0836a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000