FROM renovate/renovate:24.28.0-slim@sha256:aec15c83640189e1848cf990fbde2ccba45594bcbc924a0e78f831ba7dfbdfb4

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000