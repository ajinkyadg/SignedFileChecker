#!/bin/bash

# Update apt cache.
sudo apt-get update
# Install Nginx.
sudo apt-get install -y nginx
# Set the home page.
curl -o https://filesamples.com/samples/code/html/sample2.html
cat sample2.html | sudo tee -a /var/www/html/index.html

