FROM renovate/renovate:24.32.0-slim@sha256:471a1739e491a7f23ac1617c90471580c19986fca1661e5bb7cc10c0aac173c1

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000