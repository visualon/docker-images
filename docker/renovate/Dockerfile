FROM renovate/renovate:23.98.1-slim@sha256:df78566d3cd4e19512cf305b8be69fd7ab11da1ac738eda6112b76b760324d56

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000