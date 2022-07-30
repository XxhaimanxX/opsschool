#!/bin/bash
sudo sed -i 's/Require all denied/Require all granted/g' /etc/apache2/sites-enabled/000-default.conf
sudo systemctl restart apache2.service
