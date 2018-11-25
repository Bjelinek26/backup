This script is meant to backup folders to a remote that has been set up
via rclone.  It is basically a series of "rclone sync" commands with the relevant directories hardcoded into the command.  This is becase the script is meant to be run using cron or anacron.

There is  also the option to open filezilla or mount an external drive to aid in the tranfer of directories to backup servers or external devices.  The specific commands to transfers any directories because they are usually very specific to what I am doing but there is the options to an least begin these processes.

rclone is really the only dependecy that does not
ship with most linux distributions
