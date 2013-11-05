openstack-vm
============

An Openstack development environment. Provides:
* [Vagrant](http://www.vagrantup.com/) build a virtual machine based on Ubuntu Precise 64
* [Ansible](http://www.vagrantup.com/) configure the development environment (Devstack, Emacs, Python, ...)

## Install VirtualBox and Vagrant

* For VirtualBox, follow the instructions :
    https://www.virtualbox.org/wiki/Linux_Downloads

* For Vagrant;
    http://www.vagrantup.com

## Create an instance

    $ vagrant up

## Connect to the instance

    $ vagrant ssh


## Stop the VM

    $ vagrant halt


## Openstack

* Install Devstack :

        $ cd $HOME/Cloud/openstack/devstack
		$ ./stack.sh

* On localrc file, Openstack modules branchs:

        CINDER_BRANCH=stable/havana
		GLANCE_BRANCH=stable/havana
		HORIZON_BRANCH=stable/havana
		KEYSTONE_BRANCH=stable/havana
		KEYSTONECLIENT_BRANCH=stable/havana
		NOVA_BRANCH=stable/havana
		NOVACLIENT_BRANCH=stable/havana
		QUANTUM_BRANCH=stable/havana
		SWIFT_BRANCH=stable/havana
		...

* Connect to Openstack using [screen](http://www.gnu.org/software/screen/):

        $ screen -ls
		$ screen -r xxx.stack

* Install [Tempest](https://github.com/openstack/tempest):

        $ git clone git://github.com/openstack/tempest


## Changelog

A changelog is available [here](ChangeLog.md).

## Contact

Nicolas Lamirault <nicolas.lamirault@gmail.com>

