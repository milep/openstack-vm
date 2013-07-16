# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :cloud_dev do |cloud_dev_config|
    cloud_dev_config.vm.box = "precise64"
    cloud_dev_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    cloud_dev_config.vm.hostname = "OpenStackDev"
    cloud_dev_config.vm.network :private_network, :ip => '10.2.2.45'

    cloud_dev_config.ssh.forward_agent = true
    cloud_dev_config.ssh.forward_x11 = true

    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    # config.vm.synced_folder "../data", "/vagrant_data"

    cloud_dev_config.vm.provider :virtualbox do |vb|
      #vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.name = "OpenStackDev"
    end

    cloud_dev_config.vm.provision :ansible do |ansible|
      ansible.playbook = "ansible/cloud_dev.yml"
      ansible.inventory_file = "ansible/dev_hosts"
      ansible.options = '-vv'
    end

  end

end
