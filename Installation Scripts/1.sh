#!/bin/bash
# I use this script on a fresh install of Ubuntu, just to get a few dependencies installed, must be watched when being run as it requires user input
apt-get update
apt-get upgrade
apt-get install apache2 libapache2-mod-auth-mysql libapache2-mod-auth-plain libapache2-mod-php5 libapache2-mod-authz-unixgroup libapache2-mod-gnutls libapache2-mod-spamhaus build-essential openjdk-7-jdk toilet cowsay nano screen doxygen ant maven2 git-core subversion tcl tclxml tcllib tclcurl mysqltcl mysql-server php5-mysql 

cat >> /etc/network/interfaces << EOA
auto eth0:0
iface eth0:0 inet static
        address 91.121.40.167
        netmask 255.255.255.255
        broadcast 91.121.40.167

iface eth0 inet6 static
        address 2001:41d0:8:697d::1
        netmask 64
        post-up /etc/network/ipv6.sh add
        pre-down /etc/network/ipv6.sh del
EOA

wget -O /etc/network/ipv6.sh https://raw.github.com/chrisgward/Linux-Scripts/master/ipv6.sh

reboot