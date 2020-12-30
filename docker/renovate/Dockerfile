FROM renovate/renovate:24.11.1-slim@sha256:900689d760949d8c3b80913a006dc19e8d7a2229a894a858affc73081dbe6a0b

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000