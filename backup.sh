#!/bin/bash

echo "This script relies on rlone and the remote and pathnames are 
hardcoded so the script can be added to anacrontab or crontab.  You
will need to modify this script to meet your needs.  If you have not already
created an rclone remote run "rclone config" before modifying this script"

echo "working....."

(echo "subshell ${BASH_SUBSHELL} Podcasts"; rclone sync ~/Audio/Podcasts BradD:/Podcasts & 

	(echo "subshell ${BASH_SUBSHELL} Music"; rclone sync ~/Music BradD:/Music &

		(echo "subshell ${BASH_SUBSHELL} git"; rclone sync ~/git BradD:/git &

			(echo  "subshell ${BASH_SUBSHELL} Pictures"; rclone sync ~/Pictures BradD:/Pictures &

				(echo "subshell ${BASH_SUBSHELL} CBT"; rclone sync ~/CBT BradD:/CBT &

					(echo "subshell ${BASH_SUBSHELL} Linux_Lives"; rclone sync ~/Linux_Lives BradD:/Linux_Lives &

						(echo "subshell ${BASH_SUBSHELL} Udemy"; rclone sync -L ~/Udemy BradD:/Udemy) & 
					) 
				) 
			) 
		) 
	) 
)

ps -eo user,lwp,nlwp,%cpu,args | grep -i rclone



