FROM renovate/renovate:24.22.3-slim@sha256:71dce119919a08f6fa8e73fbffb2415b989b8cc14493b046b419360fdc02517c

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000