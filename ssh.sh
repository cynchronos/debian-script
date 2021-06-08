#!/bin/bash
apt-get update
apt-get install ssh -y
cd /etc/ssh/ 
sed 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' sshd_config
systemctl restart ssh