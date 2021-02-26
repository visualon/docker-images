FROM renovate/renovate:24.66.0-slim@sha256:07f7c4f7ed6d1fd2f1ab576474526eb918816070f6191e3423f810b3daf0054a

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000