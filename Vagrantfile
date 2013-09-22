# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :openstack_dev do |openstack_dev_config|
    openstack_dev_config.vm.box = "precise64"
    openstack_dev_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    openstack_dev_config.vm.hostname = "OpenStackDev"

    openstack_dev_config.vm.network :private_network, :ip => '10.10.0.201'
    # Assign this VM to a host-only network IP, allowing you to access it
    # via the IP. Host-only networks can talk to the host machine as well as
    # any other machines on the same network, but cannot be accessed (through this
    # network interface) by any external networks.
    # openstack_dev_config.vm.network :hostonly, "172.16.0.201"
    # openstack_dev_config.vm.network :hostonly, "10.10.0.201"

    openstack_dev_config.ssh.forward_agent = true
    openstack_dev_config.ssh.forward_x11 = true

    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    # config.vm.synced_folder "../data", "/vagrant_data"

    openstack_dev_config.vm.provider :virtualbox do |vb|
      #vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.name = "OpenStackDev"
    end

    openstack_dev_config.vm.network "forwarded_port", guest: 80, host: 8085 # Horizon, port shifting to avoid conflicts with ports on local machine
    openstack_dev_config.vm.network "forwarded_port", guest: 8774, host: 8774 # Compute
    openstack_dev_config.vm.network "forwarded_port", guest: 9696, host: 9696 # Network
    openstack_dev_config.vm.network "forwarded_port", guest: 9292, host: 9292 # Image
    openstack_dev_config.vm.network "forwarded_port", guest: 8777, host: 8777 # Metering
    openstack_dev_config.vm.network "forwarded_port", guest: 8776, host: 8776 # Volume
    openstack_dev_config.vm.network "forwarded_port", guest: 5000, host: 5000 # Identity
    openstack_dev_config.vm.network "forwarded_port", guest: 8080, host: 8086 # Object Store, port shifting to avoid conflicts with ports on local machine
    openstack_dev_config.vm.network "forwarded_port", guest: 8773, host: 8773 # EC2
    openstack_dev_config.vm.network "forwarded_port", guest: 3333, host: 3333 # S3

    openstack_dev_config.vm.provision :ansible do |ansible|
      ansible.playbook = "ansible/openstack_dev.yml"
      ansible.inventory_file = "ansible/dev_hosts"
      ansible.options = '-vv'
    end

  end

end
