#/bin/bash

function printHelp() {
	echo "Usage: "
  	echo "	jsonrpc-2.0.sh [-u URL] <Method> <Params>"
	echo "	ex) ./jsonrpc-2.0.sh -u http://localhost:8525 priv_findPrivacyGroup [\\\"alecmQx1dwfMXBywLGi7Lnym1AJWkjOKoSfc22TQpGk=\\\",\\\"tWaWg6RVKElXog8mjYMaLdlaRVD8dgbZv3dB0XMhL1c=\\\"]"
	echo
  	echo "Option: "
	echo "	-u URL (Initial value : http://localhost:8515)"
	echo
	echo "Besu API Reference https://besu.hyperledger.org/en/stable/Reference/API-Methods/"
	echo
}

function run() {
	combinate $@

	curl -X POST --data "${JSON_CTOR}" ${HOST}
}

function combinate() {
	JSON_CTOR="{\"jsonrpc\":\"2.0\",\"method\":\""$1"\",\"params\":["
	
	shift
	
	while [ "$#" -gt 0 ];
	do
		if [ "$#" -eq 1 ]; then
			JSON_CTOR="${JSON_CTOR}$1"
                	shift
		else 
			JSON_CTOR="${JSON_CTOR}$1, "
			shift
		fi
	done

	JSON_CTOR="${JSON_CTOR}],\"id\":53}"
}

HOST=http://localhost:8515

while getopts "h?u:" opt
do
  case "$opt" in
 	h | \?)
		printHelp
		exit 0
    		;;
  	u)
		HOST="$OPTARG"

		shift $(($OPTIND-1))
		;;	
  esac
done

run $@
