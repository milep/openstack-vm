# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :openstack_dev do |openstack_dev_config|
    openstack_dev_config.vm.box = "precise64"
    openstack_dev_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    openstack_dev_config.vm.hostname = "OpenStackDev"
    openstack_dev_config.vm.network :private_network, :ip => '10.9.9.33'
    #openstack_dev_config.vm.network :forwarded_port, guest: 80, host: 8888

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

    openstack_dev_config.vm.forward_port 80, 8085 # Horizon, port shifting to avoid conflicts with ports on local machine
    openstack_dev_config.vm.forward_port 8774, 8774 # Compute
    openstack_dev_config.vm.forward_port 9696, 9696 # Network
    openstack_dev_config.vm.forward_port 9292, 9292 # Image
    openstack_dev_config.vm.forward_port 8777, 8777 # Metering
    openstack_dev_config.vm.forward_port 8776, 8776 # Volume
    openstack_dev_config.vm.forward_port 5000, 5000 # Identity
    openstack_dev_config.vm.forward_port 8080, 8086 # Object Store, port shifting to avoid conflicts with ports on local machine
    openstack_dev_config.vm.forward_port 8773, 8773 # EC2
    openstack_dev_config.vm.forward_port 3333, 3333 # S3

    openstack_dev_config.vm.provision :ansible do |ansible|
      ansible.playbook = "ansible/openstack_dev.yml"
      ansible.inventory_file = "ansible/dev_hosts"
      ansible.options = '-vv'
    end

  end

end
