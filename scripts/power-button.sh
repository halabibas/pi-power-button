#! /bin/sh

### BEGIN INIT INFO
# Provides:          power-button.py
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

# If you want a command to always run, put it here

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting power-button.py"
    /usr/local/bin/power-button.py &
    ;;
  stop)
    echo "Stopping power-button.py"
    pkill -f /usr/local/bin/power-button.py
    ;;
  *)
    echo "Usage: /etc/init.d/power-button.sh {start|stop}"
    exit 1
    ;;
esac

exit 0
