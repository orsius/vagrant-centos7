#!/bin/bash
#set -x
############################################################################
# [BOOTSTRAP] -- vagrant -- rhel7 - centos7 --  single node
############################################################################
# Owner: gautier.franchini@data-essential.com
# Version: 1.0.0
# creation: 14/01/2017
# update: [date] [who] [what]
#   xx/xx/201x: GF -- <here are my actions>
# ############################################################################

# source: https://github.com/orsius/vagrant-centos7

# install epel repository
#yum install  https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y --nogpgcheck
# install git
yum install git -y --nogpgcheck

# populate /etc/hosts file
cat << EOF > /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

## VirtualBox hosts
192.168.1.81	centos-es-01
192.168.1.82	centos-es-02
192.168.1.83	centos-es-03
192.168.1.84	centos-es-04
192.168.1.85	centos-es-05
EOF

# Active the second network card
ifup eth1

# create ssh key
su - vagrant -c 'ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa'

# Write the provisioning date
date > /etc/vagrant_provisioned_at
