FROM dxflrs/garage:v2.2.0@sha256:45a61ce3f7c9c24fc23d9ed2b09b27ed560ab87b34605d175d5c588f539c24e4 AS build

FROM ghcr.io/visualon/library/busybox:1.36.1@sha256:b9598f8c98e24d0ad42c1742c32516772c3aa2151011ebaf639089bd18c605b8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="garage" \
    org.opencontainers.image.source="https://git.deuxfleurs.fr/Deuxfleurs/garage" \
    org.opencontainers.image.url="https://garagehq.deuxfleurs.fr"


COPY --from=build /garage /bin/garage
# compatibility
RUN ln -sf /bin/garage /garage

ENV RUST_BACKTRACE=1
ENV RUST_LOG=garage=info
CMD [ "garage", "server"]
