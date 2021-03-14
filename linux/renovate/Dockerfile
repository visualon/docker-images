FROM renovate/renovate:24.82.0-slim@sha256:0423cfde8cd938e9953ebeb2dbdef76b82e723c1e67510fd45492bb1771144a9

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000