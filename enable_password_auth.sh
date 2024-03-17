#!/bin/bash

# Uncomment the PasswordAuthentication line and set its value to yes
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Restart the SSH service to apply the changes
sudo systemctl restart ssh