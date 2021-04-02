FROM renovate/renovate:24.98.6-slim@sha256:735aadcb30b434fca957d59c6dab55f6d63307b3b861664d907e39fe3f42f85d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000