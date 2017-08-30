#!/bin/sh -eux

#Install nginx with additional modules
apt-get -y install nginx-extras;

#Disable service
systemctl disable nginx