FROM renovate/renovate:24.64.1-slim@sha256:32d6262da80da98aa09cf01c486910160c35fd53cac7216f0543ae47dccbf643

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000