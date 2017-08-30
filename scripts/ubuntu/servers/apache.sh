#!/bin/sh -eux

#install apache
apt-get -y install apache2;

#disable autostart
systemctl disable apache2;