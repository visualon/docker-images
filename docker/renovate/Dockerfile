FROM renovate/renovate:24.9.7-slim@sha256:1d48d0fce46a0811b099a70a686898ecd684fd735e903cd008158424c3e76481

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000