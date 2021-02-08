###########################################################
# Dockerfile that builds a Valheim-Server
###########################################################
FROM cm2network/steamcmd:root

LABEL maintainer="a.schnell@wtschnell.de"

ENV STEAMAPPID 892970
ENV STEAMAPP valheim
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"

RUN set -x \
        && apt-get update \


USER ${USER}

VOLUME ${STEAMAPPDIR}

WORKDIR ${HOMEDIR}

CMD ["bash", "entry.sh"]

# Expose ports
EXPOSE 2456/tcp \
        2457/udp \
        2458/udp