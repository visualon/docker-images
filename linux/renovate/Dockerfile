FROM renovate/renovate:24.70.1-slim@sha256:eaaa396809634187290c945a054a71133bb188c3f7dd4b7d6b054568eee73e58

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000