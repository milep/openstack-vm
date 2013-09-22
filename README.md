openstack-vm
============

An Openstack development environment. Provides:
* [Vagrant](http://www.vagrantup.com/) build a virtual machine based on Ubuntu Precise 64
* [Ansible](http://www.vagrantup.com/) configure the development environment (Devstack, Emacs, Python, ...)

Install VirtualBox and Vagrant
------------------------------

* For VirtualBox, follow the instructions :
    https://www.virtualbox.org/wiki/Linux_Downloads

* For Vagrant;
    http://www.vagrantup.com

Create an instance
------------------

    $ vagrant up --no-provision
    $ vagrant ssh
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ exit
    $ vagrant provision

Connect to the instance
-----------------------

    $ vagrant ssh


Stop the VM
-----------

    $ vagrant halt


Openstack
---------

* Install Devstack :

        $ cd $HOME/Cloud/openstack/devstack
		$ ./stack.sh

* On localrc file, Openstack modules branchs:

        CINDER_BRANCH=stable/grizzly
		GLANCE_BRANCH=stable/grizzly
		HORIZON_BRANCH=stable/grizzly
		KEYSTONE_BRANCH=stable/grizzly
		KEYSTONECLIENT_BRANCH=stable/grizzly
		NOVA_BRANCH=stable/grizzly
		NOVACLIENT_BRANCH=stable/grizzly
		QUANTUM_BRANCH=stable/grizzly
		SWIFT_BRANCH=stable/grizzly
		...

* Connect to Openstack using [screen](http://www.gnu.org/software/screen/):

        $ screen -ls
		$ screen -r xxx.stack

* Install [Tempest](https://github.com/openstack/tempest):

        $ git clone git://github.com/openstack/tempest



