
#!/bin/bash

sudo apt-get update
sudo apt install -y apache2
sudo systemctl start apache2
cp /var/www/html/index.html /var/www/html/index.html_bak
echo "`hostname`" > /var/www/html/index.html
