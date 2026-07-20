FROM lacledeslan/gamesvr-cs2d
ARG BUILD_NODE=unspecified
ARG GIT_REVISION=unspecified

LABEL architecture="amd64" \
    com.lacledeslan.build-node="$BUILD_NODE" \
    maintainer="Laclede's LAN <contact@lacledeslan.com>" \
    org.opencontainers.image.description="Laclede's LAN CS2D Freeplay Dedicated Server" \
    org.opencontainers.image.revision="$GIT_REVISION" \
    org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-cs2d-freeplay" \
    org.opencontainers.image.vendor="Laclede's LAN"

COPY --chown=CS2D:root ./dist /app

# UPDATE USERNAME & ensure permissions
RUN usermod -l CS2DFreeplay CS2D &&\
    chmod +x /app/ll-tests/gamesvr-cs2d-freeplay.sh;

USER CS2DFreeplay

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
