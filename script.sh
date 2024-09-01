#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install Apache2
echo "Installing Apache2..."
sudo apt-get install -y apache2

# Enable Apache to start on boot
echo "Enabling Apache to start on boot..."
sudo systemctl enable apache2

# Start Apache service
echo "Starting Apache..."
sudo systemctl start apache2

# Check Apache status
echo "Checking Apache status..."
sudo systemctl status apache2

# Define custom content for the index.html file
CUSTOM_HTML_CONTENT="<html>
<head>
    <title>Welcome to My Custom Apache Server</title>
</head>
<body>
    <h1>Hello, World!</h1>
    <p>This is a custom page served by Apache on Ubuntu.</p>
</body>
</html>"

# Write custom content to index.html
echo "Writing custom content to /var/www/html/index.html..."
echo "$CUSTOM_HTML_CONTENT" | sudo tee /var/www/html/index.html > /dev/null

# Set the correct permissions for the web directory
echo "Setting permissions for /var/www/html..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Apache to apply changes
echo "Restarting Apache..."
sudo systemctl restart apache2

# Confirm installation and display IP address
echo "Apache installation completed. You can access the web server using your server's IP address:"
hostname -I | awk '{print "http://"$1}'
