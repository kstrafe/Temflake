sleeptime=0.07s
sleep 3s
while true; do
	xdotool key Return
	sleep ${sleeptime}
	xdotool key Down
	sleep ${sleeptime}
	for ((i=0; i<16; ++i)); do
		xdotool key Return
		sleep ${sleeptime}
	done
	xdotool key x
	sleep ${sleeptime}
	xdotool key Down
	sleep ${sleeptime}
	xdotool key Return
	sleep ${sleeptime}
	for ((i=0; i<16; ++i)); do
		xdotool key Return
		sleep ${sleeptime}
	done
	xdotool key Up
	sleep ${sleeptime}
done
