#!/bin/bash
# -*- coding: UTF8 -*-

echo "-------------------------------------"
echo "----- Openstack VM with Ansible -----"
echo "-------------------------------------"
echo "Check valid hosts"
ansible -c local -m ping all -i ../ansible/dev_hosts

echo "Configure"
sudo ansible-playbook -c local -i ../ansible/dev_hosts ../ansible/openstack_dev.yml --extra-vars="user=travis"
