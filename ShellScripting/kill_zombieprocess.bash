#!/bin/bash
# Write a shell script function to find and kill all the zombie process


 function kill_zombies {
	# find all zombie process and store their PID's in an array
        zombies=($(ps aux | awk '{ if ($8 == "Z") print $2 }'))

	#check if there is any zombie process
	if [${zombies[@]} -eq 0]; then
		echo "No zombie process"
		return

	fi


	# klll all zombie process
	for pid in "${zombies[@]}"; do
		echo "killing zombie process with PID ${pid}...."
		kill -9 "${pid}"

	done

	echo "All zombie process killed"

 }

 kill_zombies
