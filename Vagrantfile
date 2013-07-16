# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :openstack_dev do |openstack_dev_config|
    openstack_dev_config.vm.box = "precise64"
    openstack_dev_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    openstack_dev_config.vm.hostname = "OpenStackDev"
    openstack_dev_config.vm.network :private_network, :ip => '10.9.9.33'

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

    openstack_dev_config.vm.provision :ansible do |ansible|
      ansible.playbook = "ansible/openstack_dev.yml"
      ansible.inventory_file = "ansible/dev_hosts"
      ansible.options = '-vv'
    end

  end

end
