FROM renovate/renovate:24.7.0-slim@sha256:a285317cd272e578207fc538df8d411bbcf20fe1f0939a3a7cef2d8e3fac315f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000