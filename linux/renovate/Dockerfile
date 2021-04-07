FROM renovate/renovate:24.104.0-slim@sha256:6f556c07b4872e2b620e9205116bad7dbd6e337a7c406fea51864c0955f7e1c6

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000