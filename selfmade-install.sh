#!/bin/bash

# Update and upgrade the system
apt-get update
apt update && apt upgrade -y

# Download the config and snapshot scripts
wget -O config.sh https://raw.githubusercontent.com/5mbl/hello/main/config.sh
wget -O snapshot.sh https://raw.githubusercontent.com/5mbl/hello/main/snapshot.sh

# Make the scripts executable if they exist
if [ -f config.sh ] && [ -f snapshot.sh ]; then
    chmod +x config.sh snapshot.sh
fi

# Run the installer scripts
wget -O - https://raw.githubusercontent.com/lamat1111/quilibrium-node-auto-installer/master/installer_2 | bash
wget -O - https://raw.githubusercontent.com/lamat1111/quilibrium-node-auto-installer/master/installer_qnode_service | bash