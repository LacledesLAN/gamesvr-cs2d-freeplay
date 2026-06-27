FROM lacledeslan/gamesvr-cs2d

ARG BUILDNODE="unspecified"
ARG SOURCE_COMMIT

LABEL maintainer="Laclede's LAN <contact @lacledeslan.com>" `
      com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="Laclede's LAN CS2D Freeplay Dedicated Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-cs2d-freeplay"

COPY --chown=CS2D:root ./dist /app

# UPDATE USERNAME & ensure permissions
RUN usermod -l CS2DFreeplay CS2D &&\
    chmod +x /app/ll-tests/gamesvr-cs2d.sh;

USER CS2DFreeplay

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
