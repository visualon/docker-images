FROM renovate/renovate:24.49.8-slim@sha256:1149b3867ac574f04d1f82e298176c25ed13668abad7e0b450b8e83838615309

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000