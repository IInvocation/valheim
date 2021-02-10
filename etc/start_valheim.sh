export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

# NOTE: Minimum password length is 5 characters & Password cant be in the server name.
./valheim_server.x86_64 -name ${SERVER_NAME} -port 2456 -world ${SERVER_WORLD} -password ${SERVER_PASSWORD} -public 1 > "${STEAMAPPDIR}/server.log" &

export LD_LIBRARY_PATH=$templdpath

echo "Server started"
echo ""
read -p "Press RETURN to stop server"
echo 1 > server_exit.drp

echo "Server exit signal set"
echo "You can now close this terminal"
