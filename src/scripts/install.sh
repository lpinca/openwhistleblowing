#!/bin/bash

echo "Configuring package repos"
yum -y install epel-release &> /dev/null
yum -y install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-6-x86_64/pgdg-redhat-repo-latest.noarch.rpm  &> /dev/null

echo "Installing packages"
yum -y install postgresql96-devel &> /dev/null

echo "Installing owb"
yum -y install ../../binary/owb-1.0.2-1.x86_64.rpm &> /dev/null
