openstack-vm
============

An Openstack development environment. Provides:
* Vagrant build a virtual machine based on Ubuntu Precise 64
* Puppet configure the development environment (Devstack, Emacs, Python, ...)

Install Vagrant
---------------

    Here : http://www.vagrantup.com


Create an instance
------------------

    vagrant up --no-provision
    vagrant ssh
    sudo apt-get update
    sudo apt-get upgrade
    exit
    vagrant provision

Connect to the instance
-----------------------

    vagrant ssh


Stop the VM
-----------

    vagrant halt
