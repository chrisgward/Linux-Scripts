#!/bin/bash
# Put me in /etc/network, see the 1.sh file for how to add this to your network interface files
for (( c=2; c<7; c++ ))
do
        /sbin/ifconfig eth0 inet6 $1 2001:41D0:8:697d::$(echo "obase=16; ${c}" | bc)/64
done
