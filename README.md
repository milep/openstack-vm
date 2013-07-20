openstack-vm
============

An Openstack development environment. Provides:
* [Vagrant](http://www.vagrantup.com/) build a virtual machine based on Ubuntu Precise 64
* [Ansible](http://www.vagrantup.com/) configure the development environment (Devstack, Emacs, Python, ...)

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


Devstack
--------

See 
