FROM renovate/renovate:24.12.4-slim@sha256:abf8afb59e12e548e1672c8479ed4c2a207185d98271a62c6ae24ce7f785e157

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000