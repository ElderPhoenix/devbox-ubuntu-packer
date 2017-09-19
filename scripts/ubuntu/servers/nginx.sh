#!/bin/sh -eux

#Install nginx with additional modules
add-apt-repository -y ppa:nginx/stable;
apt-get update;
apt-get -y install nginx-extras;

#Disable service
systemctl stop nginx;
systemctl disable nginx;