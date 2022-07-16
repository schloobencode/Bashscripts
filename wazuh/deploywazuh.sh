#!/usr/bin/env bash

curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | sudo apt-key add -
echo "deb https://packages.wazuh.com/4.x/apt/ stable main" | sudo tee -a /etc/apt/sources.list.d/wazuh.list
sudo apt update
sudo apt install wazuh-agent
sudo sed -i 's/<address>MANAGER_IP/<address>10.0.0.210/' /var/ossec/etc/ossec.conf
sudo systemctl enable --now wazuh-agent
