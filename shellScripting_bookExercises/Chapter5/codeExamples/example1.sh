#case statuements

# case "$VAR" in
#     pattern_1)
#         # Commands go here
#         ;;
#     pattern_2)
#         # Commands go here
#         ;;
# esac


# VAR="start"

# case "$VAR" in
#     "start")
#         echo "We start"
#         ;;
#     "stop")
#         echo "We stop"
#         ;;
# esac

case "$1" in
    "start")
        /usr/sbin/sshd
        ;;
    "stop")
        kill $(cat /var/run/sshd.pid)
        ;;
esac