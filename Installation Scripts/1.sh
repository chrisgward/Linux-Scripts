#!/bin/bash
# I use this script on a fresh install of Ubuntu, just to get a few dependencies installed, must be watched when being run as it requires user input
apt-get update
apt-get upgrade
apt-get install apache2 libapache2-mod-auth-mysql libapache2-mod-auth-plain libapache2-mod-php5 libapache2-mod-authz-unixgroup libapache2-mod-gnutls libapache2-mod-spamhaus build-essential openjdk-7-jdk toilet cowsay nano screen doxygen ant maven2 git-core subversion tcl tclxml tcllib tclcurl mysqltcl mysql-server php5-mysql 
reboot