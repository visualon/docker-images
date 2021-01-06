FROM renovate/renovate:24.11.5-slim@sha256:77eb95def21a916148b30c18838c9274ef70695489e94ef3db34b88b56517924

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000