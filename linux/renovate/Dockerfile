FROM renovate/renovate:24.93.1-slim@sha256:d258e703efbd8d9eb22efb93ee3af844a911bb99edcde91de9061a1dcc2eb5bb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000