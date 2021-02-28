FROM renovate/renovate:24.67.3-slim@sha256:9a1fab0f636564600c2bf2777bdced38063dbd48beaee5efcea114bd1c4f8385

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000