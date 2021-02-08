###########################################################
# Dockerfile that builds a Valheim-Server
###########################################################
FROM cm2network/steamcmd:root

LABEL maintainer="a.schnell@wtschnell.de"

ENV STEAMAPPID 896660
ENV STEAMAPP valheim
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"
ENV DLURL https://raw.githubusercontent.com/IInvocation/valheim

RUN set -x \
        && apt-get update \
		&& apt-get install -y --no-install-recommends --no-install-suggests \
		wget=1.20.1-1.1 \
		&& wget "${DLURL}/main/etc/entry.sh" -O "${HOMEDIR}/entry.sh" \
		&& mkdir -p "${STEAMAPPDIR}" \
		&& chmod 755 "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}" \
		&& chown "${USER}:${USER}" "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}" \
		&& rm -rf /var/lib/apt/lists/*

USER ${USER}

VOLUME ${STEAMAPPDIR}

WORKDIR ${HOMEDIR}

CMD ["bash", "entry.sh"]

# Expose ports
EXPOSE 2456/tcp \
        2457/udp \
        2458/udp