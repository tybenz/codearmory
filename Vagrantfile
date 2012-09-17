# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.customize ["modifyvm", :id, "--memory", 1024]

  config.vm.network(:hostonly, "22.22.22.22")
  config.vm.forward_port 80, 2112

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "vendor/cookbooks"
    chef.add_recipe "project"

    # You may also specify custom JSON attributes:
    chef.json = { :postgres => { :admin => "admin" }}
  end
end
