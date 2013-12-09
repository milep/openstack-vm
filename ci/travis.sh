#!/bin/bash
# -*- coding: UTF8 -*-

echo "-------------------------------------"
echo "----- Openstack VM with Ansible -----"
echo "-------------------------------------"
cd ansible
echo "Check valid hosts"
ansible -c local -m ping all -i ../ansible/ansible_hosts

echo "Configure"
sudo ansible-playbook -c local -i ../ansible/ansible_hosts ../ansible/setup.yml --extra-vars="user=travis"
