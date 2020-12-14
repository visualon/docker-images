FROM renovate/renovate:24.2.5-slim@sha256:51cf53fbdd26ead8e830bae3f232c47803af6393a4e0975dbf628cd8b6865669

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000