FROM renovate/renovate:24.78.3-slim@sha256:70644239d6c077115b99125afce589f6a39cbe6c9919f7c90620055840d3f07c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000