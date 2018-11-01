#!/bin/bash
# Version: 1.0
# Simple Centminmod Domain Removal
# Author OscarS.
# http://www.oscars.mx


echo "This will delete everything even the content. It might take a while if the size it's big."
read -p "Enter the domain to delete (i.e. demodomain.com):" domain

remove_domain() {
    rm -rf /home/nginx/domains/$domain
    rm -rf /usr/local/nginx/conf/conf.d/$domain*.conf
    rm -rf /usr/local/nginx/conf/ssl/$domain
}
remove_domain
echo "Domain deleted. Restarting nginx..."
service nginx restart