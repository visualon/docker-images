FROM renovate/renovate:24.42.2-slim@sha256:f4458099975a812c3afcdff01495e61ec3a99dd5b46cfffb732382b1b9a19607

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000