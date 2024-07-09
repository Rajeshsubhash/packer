#!/bin/bash

# Update package lists
sudo apt update

# Install Apache2 web server
sudo apt install apache2 -y

# Enable Apache2 service to start at boot
sudo systemctl enable apache2

# Start the Apache2 service
sudo systemctl start apache2

# Verify Apache is running
sudo systemctl status apache2


echo "Apache2 installation complete!"

