# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  # Pick a box
  #config.vm.box = "base"
  #config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  #config.vm.box = "lucid64"
  #config.vm.box_url = "http://files.vagrantup.com/lucid64.box"
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  #config.vm.box = "precise64"
  #config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 22, 20022
  config.vm.forward_port 80, 20080
  config.vm.forward_port 443, 20443
  config.vm.forward_port 3389, 23389
  config.vm.forward_port 8080, 28080
  # SilkJS runs on port 9090, use http://localhost:29090/ to view the guest web server
  config.vm.forward_port 9090, 29090

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "vagrant_silkjs"
  end

end
