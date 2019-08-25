#!/bin/bash
#add fix to exercise3 here
sudo sed -i '13s/deny/allow/' /etc/apache2/sites-available/default
##The error was 403 Forbidden - permission error -  because apache configuration was set to 'deny from all'
#Ops school message: 'Hello World'
