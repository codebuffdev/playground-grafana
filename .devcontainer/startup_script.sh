#!/bin/bash

# Update package lists
sudo apt update

# Install prerequisites
sudo apt install -y software-properties-common

# Add the Grafana APT repository
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

# Import Grafana GPG key
sudo wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

# Update package lists again
sudo apt update

# Install Grafana
sudo apt install -y grafana

# Start Grafana server
sudo systemctl start grafana-server

# Enable Grafana to start on boot
sudo systemctl enable grafana-server

# Display the status of Grafana service
sudo systemctl status grafana-server
