#!/bin/bash
ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -C "vagrant@server1" -q -P ""
cp /home/vagrant/.ssh/id_rsa.pub /vagrant
sudo chmod 644 /home/vagrant/.ssh/id_rsa
chmod +x /vagrant/fixScripts/exercise6-fix.sh
cp /vagrant/fixScripts/exercise6-fix.sh /home/vagrant/