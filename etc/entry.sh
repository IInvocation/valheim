#!/bin/bash
bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
				+force_install_dir "${STEAMAPPDIR}" \
				+app_update "${STEAMAPPID}" validate \
				+quit

cd "${STEAMAPPDIR}"
				
bash "${HOMEDIR}/start_valheim.sh"
