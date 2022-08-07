#!/bin/bash

# Update apt cache.
sudo apt-get update
# Install Nginx.
sudo apt-get install -y nginx
# Set the home page.
curl -o /var/www/html/index.html https://filesamples.com/samples/code/html/sample2.html
