FROM renovate/renovate:24.49.9-slim@sha256:b6c1b61a3ea6e80d50ef3ba9745ba7a4dd6ccf8e1212b778d1dcfe9237d13276

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000