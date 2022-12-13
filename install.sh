#! /bin/sh

set -e

cd "$(dirname "$0")/scripts/"

echo "=> Installing power-button...\n"
sudo cp power-button.py /usr/local/bin/
sudo chmod +x /usr/local/bin/power-button.py

echo "=> Starting power-button...\n"
sudo cp power-button.sh /etc/init.d/
sudo chmod +x /etc/init.d/power-button.sh

sudo update-rc.d power-button.sh defaults
sudo /etc/init.d/power-button.sh start

echo "power-button installed.\n"
