FROM renovate/renovate:24.10.3-slim@sha256:8838c382095d9b1e3195f8bee6aa013a57533e82a7377befe2181a9293299431

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000