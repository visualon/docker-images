FROM renovate/renovate:24.79.1-slim@sha256:9dc937b44750ce15d4b5145cbd457666596af61523dda881d0711ab0dad07873

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000