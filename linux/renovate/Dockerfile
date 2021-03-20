FROM renovate/renovate:24.90.0-slim@sha256:a8283f5d22397d9896c2c4ffe6ba21658c3f64b2204422939dda90db920af3fb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000