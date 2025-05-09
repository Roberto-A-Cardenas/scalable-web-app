#!/bin/bash
exec > /var/log/user-data.log 2>&1
set -x

yum update -y
amazon-linux-extras enable nginx1
yum clean metadata
yum install -y nginx
systemctl enable nginx
systemctl start nginx

# Replace index.html *after* service is running
echo "<h1>Welcome to your updated scalable web app!</h1>" | sudo tee /usr/share/nginx/html/index.html



