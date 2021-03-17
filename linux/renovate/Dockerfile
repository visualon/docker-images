FROM renovate/renovate:24.89.1-slim@sha256:f597d9781af176b4f2956433f536c2bfd5bceed5723bd4ae0037b4964ae43ea9

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000