FROM dxflrs/garage:v2.1.0@sha256:4c9b34c113e61358466e83fd6e7d66e6d18657ede14b776eb78a93ee8da7cf6a AS build

FROM public.ecr.aws/docker/library/busybox:1.37.0@sha256:2f590fc602ce325cbff2ccfc39499014d039546dc400ef8bbf5c6ffb860632e7

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
