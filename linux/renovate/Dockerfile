FROM renovate/renovate:24.67.2-slim@sha256:0a2dc0b9fed41aa3cb176535c9d383438e229c29f417fc6f1c98536bb15b96eb

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000