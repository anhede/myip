#!/bin/sh
# Program created by Josef Anhede
# Allows easy lookup of IPs
# myip [-flags]
#       -i: show only internal IP
#	-e: show only external IP
#	-

function myip(){
	unset INTERNAL_IP EXTERNAL_IP
	# Loop through arguments and process them
	for arg in "$@"
	do
    		case $arg in
        		-i|--internal)
        		INTERNAL_IP=1
        		shift # Remove --internal from processing
        		;;
        		-e|--external)
        		EXTERNAL_IP=1
        		shift # Remove --cache= from processing
        		;;
    		esac
	done

	if [ "$EXTERNAL_IP" = "1" ]; then
		myExternalIp=$(curl ifconfig.me -s)
		echo $myExternalIp
	fi

	if [ "$INTERNAL_IP" = "1" ]; then
		myInternalIp=$(ipconfig getifaddr en0)
		echo $myInternalIp
	fi

	if [ "$INTERNAL_IP$EXTERNAL_IP" = "" ]; then
		myInternalIp=$(ipconfig getifaddr en0)
		myExternalIp=$(curl ifconfig.me -s)
        	echo "Internal:" $myInternalIp
        	echo "External:" $myExternalIp
	fi
}
