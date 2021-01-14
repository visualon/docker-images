FROM renovate/renovate:24.17.2-slim@sha256:5f8c208422873f7833d68e7130533cd88ee9378134bf152e69fa83d18fcb722d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000