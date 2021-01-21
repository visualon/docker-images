FROM renovate/renovate:24.26.1-slim@sha256:cbb1259c2994bf6d6435bac4c297f97be8843c878dd1c904e2fb5dacfaf0d23d

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000