FROM renovate/renovate:24.2.3-slim@sha256:b65a85b1bd24162e81d63e7adb85321c80614180a3579a68224b857e8c489920

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000