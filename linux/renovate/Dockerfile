FROM renovate/renovate:24.66.4-slim@sha256:0a186661212ad74307d9059685bb823eaee2f0e83b31c83cdf8902cef1199161

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>"

USER root

# make globals available for jenkins
RUN ln -sf $(command -v yarn) /usr/local/bin/yarn

USER 1000