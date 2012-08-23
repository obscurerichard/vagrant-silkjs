# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"

  config.vm.forward_port 22, 10022
  config.vm.forward_port 80, 10080
  config.vm.forward_port 443, 10443
  config.vm.forward_port 3389, 13389
  config.vm.forward_port 8080, 18080

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "vagrant-silkjs"
  end

end
