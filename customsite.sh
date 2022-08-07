#!/bin/bash

# Update apt cache.
sudo apt-get update

# Install Nginx.
sudo apt-get install -y nginx

# Set the home page.
curl -X GET https://google.com | sudo tee -a /var/www/html/index.html
