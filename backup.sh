#!/bin/bash

echo "This script relies on rlone and the remote and pathnames are 
hardcoded so the script can be added to anacrontab or crontab.  You
will need to modify this script to meet your needs.  If you have not already
created an rclone remote run "rclone config" before modifying this script"

(rclone sync ~/Audio/Podcasts BradD:/Podcasts)

(rclone sync ~/Music BradD:/Music)

(rclone sync ~/git BradD:/git)

(rclone sync ~/Pictures BradD:/Pictures)

(rclone sync ~/CBT BradD:/CBT)

(rclone sync ~/Linux_Lives BradD:/Linux_Lives)

(rclone sync ~/Udemy BradD:/Udemy)
