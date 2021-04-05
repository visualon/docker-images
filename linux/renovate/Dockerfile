FROM renovate/renovate:24.103.0-slim@sha256:c94344bef28828f03b437bd78f82d307bfefe8ab81bdc1ab745857e1c9086790

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000