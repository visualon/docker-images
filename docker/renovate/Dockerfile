FROM renovate/renovate:23.99.0-slim@sha256:db4a57e6f731376abff8eaf0d6c1374b4b53f8b57d337ca83c35a5f78ca290c2

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000