FROM renovate/renovate:24.85.1-slim@sha256:7663ce6b099edf354d9e0548e1870e8122d7422d359c9bbe9982dd92821e22cb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000