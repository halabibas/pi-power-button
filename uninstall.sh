#! /bin/sh

set -e

cd "$(dirname "$0")/.."

echo "=> Stopping power-button service...\n"
sudo update-rc.d power-button.sh remove
sudo /etc/init.d/power-button.sh stop

echo "=> Removing power-button service...\n"
sudo rm -rf /usr/local/bin/power-button.py 
sudo rm -rf /etc/init.d/power-button.sh 

echo "power-button uninstalled.\n"
