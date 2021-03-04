FROM renovate/renovate:24.72.1-slim@sha256:d44559a2b197b97a4f92c3a753b44575b7d170974535e6710bb54107d8a739ba

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000