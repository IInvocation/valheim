#!/bin/bash
bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
				+force_install_dir "${STEAMAPPDIR}" \
				+app_update "${STEAMAPPID}" validate \
				+quit

cd "${STEAMAPPDIR}"
				
bash "${STEAMAPPDIR}/start_server.sh"
