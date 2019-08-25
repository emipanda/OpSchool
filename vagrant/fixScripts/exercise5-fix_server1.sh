#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
sudo apt-get install sshpass
cat ~/.ssh/id_rsa.pub | sshpass -p vagrant ssh -o StrictHostKeyChecking=no vagrant@server2 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
