#!/bin/bash

echo "Starting cleanup before deployment..."

# Remove existing WAR file
if [ -f /var/lib/tomcat9/webapps/HelloWorld-1.war ]; then
    echo "Removing existing HelloWorld-1.war..."
    sudo rm /var/lib/tomcat9/webapps/HelloWorld-1.war
fi

# Remove existing exploded directory
if [ -d /var/lib/tomcat9/webapps/HelloWorld-1 ]; then
    echo "Removing existing exploded directory HelloWorld-1..."
    sudo rm -rf /var/lib/tomcat9/webapps/HelloWorld-1
fi

echo "Cleanup completed."
