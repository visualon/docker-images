FROM renovate/renovate:24.74.4-slim@sha256:ffb3586a43ca80341c1270aece6ce7cd4a0bcb3a0e4791f28faf5c4445a5060e

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000