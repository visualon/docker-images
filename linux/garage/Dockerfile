FROM dxflrs/garage:v2.5.0@sha256:677e5b758e4425a325b811c425c026bf35a4bf42f7ddbaa773de3f4fd779a5a5 AS build

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
