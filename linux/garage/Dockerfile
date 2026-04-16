FROM dxflrs/garage:v2.3.0@sha256:866bd13ed2038ba7e7190e840482bc27234c4afaf77be8cfa439ae088c1e4690 AS build

FROM ghcr.io/visualon/library/busybox:1.36.1@sha256:73aaf090f3d85aa34ee199857f03fa3a95c8ede2ffd4cc2cdb5b94e566b11662

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
