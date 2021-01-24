FROM renovate/renovate:24.27.4-slim@sha256:41338e219e17d38e80ae4d4e6aab907614876e0e0988c65e3be181c976f8d11a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000