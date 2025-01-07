#!/bin/bash
# sudo apt update
# sudo apt install -y apache2
# sudo systemctl start apache2
# sudo systemctl enable apache2
# sudo mv /var/www/html/index.html /var/www/html/index.html.bak
# sudo cp /home/ubuntu/supportFile/index.html /var/www/html/index.html

#!/bin/bash -xe
sudo apt update
sudo apt install nginx --yes
sudo cp /home/ubuntu/index.html /var/www/html/index.html
