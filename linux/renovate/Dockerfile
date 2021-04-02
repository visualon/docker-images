FROM renovate/renovate:24.98.8-slim@sha256:e747417b51466f7e732a39866bd9394d4ab5efa250e81924c5579a5128ebe1df

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000