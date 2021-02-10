export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

cd "${STEAMAPPDIR}"

# NOTE: Minimum password length is 5 characters & Password cant be in the server name.
#./valheim_server.x86_64 -name ${SERVER_NAME} -port 2456 -world ${SERVER_WORLD} -password ${SERVER_PASSWORD} -public 1 > server.log &

while true; do
./valheim_server.x86_64 \
  -name ${SERVER_NAME} \
  -port 2456 \
  -world ${SERVER_WORLD} \
  -password ${SERVER_PASSWORD} \
  -public 1 \
  > server.log
done
