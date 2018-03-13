#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
mv shiny-server.conf /etc/shiny-server/
chown shiny.shiny /var/log/shiny-server

exec shiny-server 2>&1

