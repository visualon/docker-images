FROM renovate/renovate:24.12.3-slim@sha256:817d870de06e71bc612341cbca3c75441279713cbb300da708e710a5861c2687

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000