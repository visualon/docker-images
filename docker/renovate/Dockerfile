FROM renovate/renovate:24.25.3-slim@sha256:f1203fd35e16b92bd60c2a149591eb34897db1510df98fc8935ec6508bda5475

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000