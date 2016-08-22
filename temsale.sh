#! /usr/bin/env bash
set -e
sleeptime=0.07s
sleep 3s
while true; do
	old=$(date +%s%N)
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
	new=$(date +%s%N)
	echo $(((new - old) / 100)) total for 8 GOLD
	echo $((((new - old) / 1000) / 8)) microseconds for 1 GOLD
	echo $(bc <<< '3600 / 0.'"$(((new - old) / 1000 / 8))") GOLD per hour
done
