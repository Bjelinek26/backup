#!/bin/bash

echo "This script relies on rlone and the remote and pathnames are 
hardcoded so the script can be added to anacrontab or crontab.  You
will need to modify this script to meet your needs.  If you have not already
created an rclone remote run "rclone config" before modifying this script"

echo "working....."

rclone sync ~/Audio/Podcasts BradD:/Podcasts;

(echo "Subshell 1: Music"; rclone sync ~/Music BradD:/Music;

	(echo "Subshell 2: git"; rclone sync ~/git BradD:/git;

		(echo  "Subshell 3: Pictures"; rclone sync ~/Pictures BradD:/Pictures;

			(echo "Subshell 4: CBT"; rclone sync ~/CBT BradD:/CBT;

				(echo "Subshell 5: Linux_Lives"; rclone sync ~/Linux_Lives BradD:/Linux_Lives;

					(echo "Subshell 6: Udemy"; rclone sync ~/Udemy BradD:/Udemy;
					)
				)
			)
		)
	)
)
