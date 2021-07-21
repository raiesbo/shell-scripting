# Chapter 5: Exercise 1

<<comment
Create a startup script for an application called sleep-walking-server, which is provided below.
The script should be named sleep-waking and accept "start" and "stop" as arguments.
 If anything other than "start" aor "stop" is provided as an argument, display a usage statement:
 "Usage sleep-walking start|stop" and terminate the script with an exit status of 1

 To start sleep-walking-server, use this command: "/tmp/sleep-walking-server $"

 To stop sleep-walking-server, use this command: "kill $(cat/tmp/sleep-walking-server.pid)"

 Here are the comments of "sleep-walking-server". Be sure to put this file in /tmp and run chmod 755 /tmb/sleep/walking-server so that it is executable.
comment

# Script:

# Instructions:
#   Place this script in /tmp

# Description:
#   This script simulates a service or a daemon.

PID_FILE="/tmp/sleep-walking-sever.pid"
trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM
echo "$$" > $PID_FILE

while true
do
    :
done

case "$1" in
    "start")
        /tmp/sleep-walking-server &
        ;;
    "stop")
        kill $(cat/tmp/sleep-walking-server.pid)
        ;;
    *)
    echo "Usage sleep-walking start|stop"
    exit 1
esac