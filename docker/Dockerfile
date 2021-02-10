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
		locales \
		locales-all \
		wget=1.20.1-1.1 \
	&& wget "${DLURL}/master/etc/entry.sh" -O "${HOMEDIR}/entry.sh" \	
	&& mkdir -p "${STEAMAPPDIR}" \
	&& wget "${DLURL}/master/etc/start_valheim.sh" -O "${HOMEDIR}/start_valheim.sh" \
	&& chmod 755 "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}" \
	&& chown "${USER}:${USER}" "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}" \
	&& rm -rf /var/lib/apt/lists/*

# add en-US.UTF-8 in order to have steamcmd working
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

USER ${USER}

VOLUME ${STEAMAPPDIR}

WORKDIR ${HOMEDIR}

ENV SERVER_NAME="ValheimServer"
ENV SERVER_PASSWORD="MySuperSecret"
ENV SERVER_WORLD="ValheimWorld"

# Expose ports
EXPOSE  2456/udp \
        2457/udp \
        2458/udp

CMD ["bash", "entry.sh"]
