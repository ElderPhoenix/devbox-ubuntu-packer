#!/bin/sh -eux

#install apache
apt-get -y install apache2;

#enable most-needed mods
a2enmod rewrite;
a2enmod macro;

#disable autostart
systemctl stop apache2;
systemctl disable apache2;