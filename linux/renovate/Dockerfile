FROM renovate/renovate:24.98.2-slim@sha256:3c53607ad383a2fbe4fcc40c824e82377617686f4e47cc311ac9f9112db8d0ae

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000