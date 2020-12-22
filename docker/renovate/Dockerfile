FROM renovate/renovate:24.10.2-slim@sha256:eb009153109016e28a81be84189122b81479b97c09285fa195f3c52f0b02f64a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000