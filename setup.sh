#!/bin/bash

# Instalace potrebnych packagu na KVM a upravovani .qcow2 imagu
apt update
apt install -y qemu-kvm qemu-system \
libvirt-daemon-system libvirt-clients bridge-utils \
libguestfs-tools python3-libvirt

# Pridani repozitare a instalace Ansible a komunitnich modulu
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt update
apt install -y ansible 
ansible-galaxy collection install community.libvirt
ansible-galaxy collection install community.mysql

# Vytvoreni SSH klicu, nyni bez vyzvy
ssh-keygen -q -t rsa -b 4096 -N '' -f /root/.ssh/id_rsa 

virsh net-start default
