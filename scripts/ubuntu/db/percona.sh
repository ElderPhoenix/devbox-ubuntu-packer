#!/bin/sh -eux

#Add percona repository
wget https://repo.percona.com/apt/percona-release_0.1-4.$(lsb_release -sc)_all.deb;
dpkg -i percona-release_0.1-4.$(lsb_release -sc)_all.deb;
rm percona-release_0.1-4.$(lsb_release -sc)_all.deb;
apt-get -y update;

#install percona
DEBIAN_FRONTEND=noninteractive apt-get -q -y install percona-server-server-5.7 percona-server-client-5.7;
mysqladmin -u root password root;

#disable autostart
systemctl stop mysql.service;
systemctl disable mysql.service;